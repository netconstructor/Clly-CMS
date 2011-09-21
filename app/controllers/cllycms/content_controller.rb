module Cllycms
  class ContentController < ApplicationController
    require 'mail'
    require 'mongoid'
    skip_before_filter :verify_authenticity_token
   
    def index
   
    end
    
    def email
#       message = Mail.new(params[:message])
#       Rails.logger.log message.subject #print the subject to the logs
#       Rails.logger.log message.body.decoded #print the decoded body to the logs
#       Rails.logger.log message.attachments.first.inspect #inspect the first attachment
#   
#       # Do some other stuff with the mail message

      c=Cllycms::Content.new       
      c.title=params[:subject]
      c.content_notes.build(:entry=>params[:plain])
      c.save 
  
      render :text => 'success', :status => 200 # a status of 404 would reject the mail      
    end
  
  end
end
