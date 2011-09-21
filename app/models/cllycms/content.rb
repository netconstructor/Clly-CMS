module Cllycms
  class Content 
    include Mongoid::Document
    include Mongoid::Versioning
    include Mongoid::Timestamps
    
    embeds_many :content_blocks, class_name: 'Cllycms::ContentBlock'
    embeds_many :content_notes, class_name: 'Cllycms::ContentNote'
    embeds_many :content_logs, class_name: 'Cllycms::ContentLog'
  
    belongs_to :site
    belongs_to :creator, class_name: 'Cllycms::User'
    belongs_to :author, class_name: 'Cllycms::User'
    belongs_to :assignee, class_name: 'Cllycms::User'
    
  #   has_many :translations, class_name: 'Content'
  #   belongs_to :original_translation, class_name: 'Content'
  
    has_many :translations, :class_name => 'Cllycms::Content', :inverse_of => :original_translation
    belongs_to :original_translation, :class_name => 'Cllycms::Content', :inverse_of => :translations
    
  
    field :type  
    field :title
    field :language
  
    field :status
    field :state
  
    field :publish_at, type: DateTime
    field :deadline_at, type: DateTime 
         
  end
end