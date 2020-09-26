class ProfileImageIdController < ApplicationController
  
  def new
   @profile_image_id = ProfileImageId.new
  end

  def create
    @profile_image_id = ProfileImageId.new(profile_image_id_params)
    @profile_image_id.user_id = current_user.id
    @profile_image_id.save
    redirect_to profile_image_id_path
  end

  def index
  end

  def show
    @profile_image_id = ProfileImageId.find(params[:id])
  end
  
  def destroy
    @profile_image_id = ProfileImageId.find(params[:id])
    @profile_image_id.destroy
    redirect_to profile_image_id_path
  end

  private
  def profile_image_id_params
    params.require(:profile_image_id).permit(:shop_name, :image, :caption)
  end
  
end
