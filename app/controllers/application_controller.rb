class ApplicationController < ActionController::Base
  include DeviseWhitelist
  
  def after_sign_in_path_for(resource)
    profile_path
  end
end
