module Cllycms
  class ContentNote
    include Mongoid::Document
    include Mongoid::Timestamps
    
    embedded_in :content, class_name: 'Cllycms::Content'
    belongs_to :user, class_name: 'Cllycms::User'
    
    field :entry
      
  end
end