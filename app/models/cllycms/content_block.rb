class ContentBlock
  include Mongoid::Document
  
  embedded_in :content, class_name: 'Cllycms::Content'
end