class DetailsController < ApplicationController
  def edit
    @detail = current_user.detail
  end

  def update
    current_user.detail.update(secure_params)
    redirect_to current_user
  end

private
  def secure_params
    params.require(:detail).permit(:first_name, :last_name,
                                   :gender, :marital_status, 
                                   :birthday) 
  end
end
