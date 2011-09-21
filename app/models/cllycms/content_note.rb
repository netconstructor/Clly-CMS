module Cllycms
  class ContentNote
    include Mongoid::Document
    include Mongoid::Timestamps
    
    embedded_in :content
    belongs_to :user
    
    field :entry
      
  end
end