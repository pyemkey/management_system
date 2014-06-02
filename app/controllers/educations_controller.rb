class EducationsController < ApplicationController
  before_action :set_user, only: [:new, :create, :update, :edit, :destroy]
  def new
    @education = @user.educations.new 
  end

  def create
    @education = @user.educations.new(secure_params) 
    if @education.save
      redirect_to @user
    else
      render :new
    end
  end

  def edit
    @education = Education.find(params[:id]) 
  end

  def update
    education = Education.find(params[:id])
    if education.update(secure_params)
      redirect_to @user
    else
      render :edit
    end 
  end

  def destroy
    education = Education.find(params[:id]) 
    education.destroy!
    redirect_to @user
  end

private
  def secure_params
    params.require(:education).permit(
      :institution_name, :started_on, :ended_on, :thesis_title, :degree) 
  end
  def set_user
    @user = User.find(params[:user_id]) 
  end
end
