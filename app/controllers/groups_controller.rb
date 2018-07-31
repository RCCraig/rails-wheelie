class GroupsController < ApplicationController
  before_action :authenticate_user! 
  before_action :set_group, only: [:show, :edit, :update, :destroy]

  
  def index
    @groups = Group.all
  end
  
  def show
  end
  
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
  
  def set_group
    @group = Group.find(params[:id])
  end

  def group_params
    params.require(:group).permit(:name)
  end
end


