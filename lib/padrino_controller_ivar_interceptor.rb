# This module will save away all set controller instance variables, to 
# be able to examine them after the controller action returns.
#
# Only for testing purposes. Use sparingly - in most cases pure BDD is better!
# (sr 2013-09-12)

module PadrinoControllerIvarInterceptor
  STORE_KEY = :_test_controller_ivars

  def self.registered( app )
    this = self # Save reference to self to be able to use it in blocks

    app.before do
      # Just to be sure we aren't leaking anything into the new request, 
      # clear the old state
      this.set_store( nil )
    end

    app.after do
      ivars = self.instance_variables.each_with_object( {} ) do |ivar, store|
        store[ivar] = self.instance_variable_get( ivar )
      end
      this.set_store( ivars )
    end
  end

  def controller_ivars
    ControllerIvarInterceptor.get_store
  end
  module_function :controller_ivars

  def controller_ivar( name )
    lookup_name = "@#{name}".to_sym

    store = ControllerIvarInterceptor.get_store
    store ? store[lookup_name] : nil
  end
  module_function :controller_ivar

  def self.clear
    set_store( nil )
  end

  def self.get_store
    Thread.current.thread_variable_get( STORE_KEY )
  end

  def self.set_store( value )
    Thread.current.thread_variable_set( STORE_KEY, value )
  end
end
