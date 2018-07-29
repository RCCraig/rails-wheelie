class PagesController < ApplicationController
  def front
    @user = current_user
  end
end
