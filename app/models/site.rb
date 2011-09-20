class Site
  include Mongoid::Document
  include Mongoid::Versioning
  
  has_many :contents
    
end