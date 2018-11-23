class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception, unless: Proc.new {|r|
     r.request.format.json?
   }

   def custome_logger
     Logger.new("#{Rails.root}/log/hello.log")
   end
end
