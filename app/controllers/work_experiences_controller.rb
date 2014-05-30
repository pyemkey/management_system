class WorkExperiencesController < ApplicationController
  before_action :set_user

  def index
    @work_experiences = @user.work_experiences.all 
  end

  def new
    @work_experience = @user.work_experiences.new  
  end

  def edit
    @work_experience = @user.work_experiences.find(params[:id])
  end

  def create
    @work_experience = @user.work_experiences.new(work_experiences_params) 
    if @work_experience.save
      redirect_to @user
    else
      render :new
    end
  end

  def update
    @work_experience = @user.work_experiences.find(params[:id])
    if @work_experience.update(work_experiences_params)
      redirect_to @user
    else
      render :edit
    end 
  end

  def destroy
    @work_experience = @user.work_experiences.find(params[:id])
    @work_experience.destroy!
    redirect_to @user
  end

private
  def work_experiences_params
    params.require(:work_experience).permit(
      :company_name, :start_date, :end_date, :position,
      :location)
  end

  def set_user
    @user ||= User.find(params[:user_id]) 
  end
end
