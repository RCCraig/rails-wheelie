class GroupsController < ApplicationController
  before_action :authenticate_user! 
  
  def new
    @group = Group.new
  end
  
  def create
    @group = Group.new(group_params) 
    if @group.save
      current_user.groups << @group   
      flash[:notice] = "You have just joined a group."
      redirect_to profile_path(current_user) 
    else
     render :new
    end
  end
    
  private

  def group_params
    params.require(:group).permit(:name)
  end
end


