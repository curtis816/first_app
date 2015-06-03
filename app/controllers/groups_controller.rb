class GroupsController < ApplicationController

  def index
    @groups = Group.all
  end

  def show
  end

  def new
    @group = Group.new
  end

  def edit
  end

  def create
    @group = Group.create(group_params)

    if @group.save
      redirect_to　groups_path
    else
      render :new
    end
  end

  def update
  end

  def destroy
  end


end
  private

  def group_params
    params.require(:group).permit(:title, :description)
  end