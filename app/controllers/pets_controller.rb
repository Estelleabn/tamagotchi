class PetsController < ApplicationController

  before_action :lookup_user, only: [:create, :new, :edit, :update]
  before_action :lookup_pet, only: [:show]


  def index
  end

  def create
    pet = @user.create_pet(params.require(:pet).permit(:name, :bio))
    redirect_to user_pet_path(@user, pet)
  end

  def new
    @pet = Pet.new
  end

  def edit
  end

  def show
    
  end

  def update
  end

  def destroy
  end

  private

  def lookup_user
    @user = User.find(params[:user_id])
  end

  def lookup_pet
    @pet = Pet.find(params[:id])
  end

end
