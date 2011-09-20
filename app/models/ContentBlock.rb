class ContentBlock
  include Mongoid::Document
  
  embedded_in :content
  
  
end