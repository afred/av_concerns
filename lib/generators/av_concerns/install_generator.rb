module AvConcerns
  class Install < Rails::Generators::Base

    def add_av_concerns_file_set_behaviors
      file_path = 'app/models/file_set.rb'
      if File.exist?(file_path)
        inject_into_file file_path, after: /include ::CurationConcerns::FileSetBehavior.*$/ do
          "\n  # Add AvConcerns file set behavior to FileSet model.\n" \
            "  include ::AvConcerns::FileSetBehavior\n"
        end
      else
        copy_file 'models/file_set.rb', file_path
      end
    end
  end
end
