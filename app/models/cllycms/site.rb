module Cllycms
  class Site
    include Mongoid::Document
    include Mongoid::Versioning
    
    has_many :contents
      
  end
end