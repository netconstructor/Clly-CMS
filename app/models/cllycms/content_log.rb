module Cllycms
  class ContentLog
    include Mongoid::Document
    include Mongoid::Timestamps
    
    embedded_in :content
    belongs_to :user
    
    field :entry
      
  end
end