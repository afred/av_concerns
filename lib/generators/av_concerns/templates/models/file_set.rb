class FileSet < ActiveFedora::Base
  include ::CurationConcerns::FileSetBehavior
  include ::AvConcerns::FileSetBehavior
end