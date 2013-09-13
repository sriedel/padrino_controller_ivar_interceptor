Gem::Specification.new do |s|
  s.name = "Padrino Controller Instance Variable Interceptor"
  s.version = "0.1.0"

  s.required_ruby_version = ">= 2.0.0"
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Sven Riedel"]
  s.date = %q{2013-09-13}
  s.description = %q{Intercepts and makes available instance variables set in a padrino controller}
  s.add_dependency( 'term-ansicolor', '>= 1.0.7' )
  # s.add_dependency( 'rdoc',           '~> 4.0.0.preview3.1' )

  s.summary = %q{Allows unit tests to test the instance variable values set in a padrino controller}
  s.email = %q{sr@gimp.org}
  s.homepage = %q{http://github.com/sriedel/padrino_controller_ivar_interceptor}

  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{2.0.5}

  s.extra_rdoc_files = %W{ README }
  s.files = %W{ README
                Changelog
                lib/padrino_controller_ivar_interceptor.rb
              }
end
