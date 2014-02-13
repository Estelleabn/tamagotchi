class PetsController < ApplicationController

  before_action :lookup_user, only: [:show]
  before_action :lookup_pet, only: [:show, :edit, :update, :destroy]


  def index
  end

  def create
    pet = current_user.create_pet(params.require(:pet).permit(:name, :bio))
    redirect_to user_pet_path(current_user, pet)
  end

  def new
    @pet = Pet.new
  end

  def edit
  end

  def show
    if @pet == nil
    redirect_to new_pet_path
    end
  end

  def update
    @pet.update_attributes(params.require(:pet).permit(:name, :bio, :rating))
    redirect_to user_pet_path(current_user, @pet)
  end

  def destroy
    @pet.destroy
    redirect_to user_url(current_user) 
  end

  private

  def lookup_user
    @user = User.find(params[:user_id])
  end

  def lookup_pet
    @pet = Pet.find(params[:id])
  end

end
