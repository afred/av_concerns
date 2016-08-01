        require 'rails/generators'

        class TestAppGenerator < Rails::Generators::Base
          source_root "./spec/test_app_templates"


          def install_curation_concerns
            generate 'curation_concerns:install', '-f'
          end

          # if you need to generate any additional configuration
          # into the test app, this generator will be run immediately
          # after setting up the application

          def install_engine
            generate 'av_concerns:install'
          end
        end

