require 'json'
class DogsController < ApplicationController
    def index
        dogs=Dog.all
        render json: dogs
    end
    def show
        dog=Dog.find(params[:id])
        render json: dog
    end

    def create
        dog=Dog.find_or_create_by!(name: dog_params["name"], gender: dog_params["gender"],
            size: dog_params["size"], age: dog_params["age"],
            description: dog_params['description'], breeds: dog_params["breeds"],
            organization_id: dog_params['organization_id'], status: dog_params['status'],
            contact: dog_params[:contact], photos: dog_params['photos'])
        if dog.valid?
			render json: dog, status: :created
		else
			render json: dog.errors.full_messages, status: :unprocessable_entity
		end
    end

    private
  
    def dog_params
    params.require(:dog).permit(:name, :gender, :size, :age, :description, 
        :organization_id, :status, photos:[:small, :medium, :large, :full], 
        contact:[{address:[:city, :state, :address1, :postcode]}, :email, :phone], breeds:[:primary, :secondary])
    end 
end


