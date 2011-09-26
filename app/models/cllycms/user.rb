module Cllycms
  class User
    include Mongoid::Document
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    include Mongoid::Versioning
    
    has_many :authored_contents, class_name: 'Cllycms::Content'
    has_many :created_contents, class_name: 'Cllycms::Content'
    has_many :assigned_contents, class_name: 'Cllycms::Content'
    
    has_many :content_notes, class_name: 'Cllycms::ContentNote'
    
        
  end
end