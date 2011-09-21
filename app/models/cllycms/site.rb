module Cllycms
  class Site
    include Mongoid::Document
    include Mongoid::Versioning
    
    has_many :contents, class_name: 'Cllycms::Content'
      
  end
end