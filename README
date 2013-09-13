= Usage
In your app.rb, add the following:

configure( :test ) do
  register PadrinoControllerIvarInterceptor
end

After a test call to a controller, you can access a specific instance variable,
e.g. @example with

PadrinoControllerIvarInterceptor.controller_ivar( :example )

To look at all set instance variables, use

PadrinoControllerIvarInterceptor.controller_ivars

The cache can be manually cleared with

PadrinoControllerIvarInterceptor.clear

however, this should not be required; the cache will be cleared at the 
beginning of each controller call.

As a convenience, you can tag your controller tests with

describe "MyController", :type => :controller do
...
end

and add to the spec_helper.rb:

RSpec.configure do |conf|
  conf.include( PadrinoControllerIvarInterceptor, :type => :controller )
end

to access controller_ivar() and controller_ivars() directly, without specifying
the module name.

= Note
Usually it's cleaner to test the behaviour and side effects of your controller
actions; peeking at the values set in instance variables constitutes testing
implementation and is frowned upon.

That being said, sometimes you really, absolutely, positively need to know
what is being set, and side effects are too ambigious. 

To misquote Terry Pratchett: "Rules are there so that you think about it, before
you break them."

But seriously, never ever use this outside of local unit tests.

