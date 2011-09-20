class Content 
  include Mongoid::Document
  include Mongoid::Versioning
  
  embeds_many :content_blocks
end