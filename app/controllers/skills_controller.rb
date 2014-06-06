class SkillsController < ApplicationController
  def create
    user = User.find(params[:skill][:user])
    user.skill_list = params[:skill][:name]
    binding.pry
    redirect_to user
  end

  def destroy
    current_user.skill_list.remove(params[:name])
    current_user.detail.save
    redirect_to current_user  
  end

private
  def secure_params
    params.require(:skills).permit(:name) 
  end
end
