class InterestsController < ApplicationController
  def create
    user = User.find(params[:interest][:user])
    user.interest_list = params[:interest][:name]
    redirect_to user
  end

  def destroy
    interest = Interest.find(params[:id])
    current_user.interests.delete interest
    redirect_to current_user  
  end

private
  def secure_params
    params.require(:interest).permit(:name) 
  end
end
