module Webhookr
  module Mailparserio
    module Generators

      class ExampleHooksGenerator < Rails::Generators::Base
        source_root File.expand_path(File.join(File.dirname(__FILE__), 'templates'))

        desc "Creates an example Mailparserio hook file: 'app/models/mail_parserio_hooks.rb'"
        def example_hooks
          copy_file( "mail_parserio_hooks.rb", "app/models/mail_parserio_hooks.rb")
        end
      end

    end
  end
end
