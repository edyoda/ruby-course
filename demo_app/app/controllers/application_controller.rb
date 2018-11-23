class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception, unless: Proc.new {|r|
     r.request.format.json?
   }
end
