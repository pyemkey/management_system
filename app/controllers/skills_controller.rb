class SkillsController < ApplicationController
  def create
    user = User.find(params[:skill][:user])
    user.skill_list = params[:skill][:name]
    redirect_to user
  end

  def destroy
    skill = Skill.find(params[:id])
    current_user.skills.delete skill
    redirect_to current_user  
  end

private
  def secure_params
    params.require(:skills).permit(:name) 
  end
end
