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


        # since dog.photos is json, and not a string or integer, we must first declare
        # it as it's class, then we can fill in the array
        #Json causing problems with the contact[address] as well
        #JSON.parse would not work - JSON.parse(dog.contact['address'])
    def create
        binding.pry
         dog=Dog.find_or_create_by!(
            name: params['dog']["name"], gender: params['dog']["gender"],
            size: params['dog']["size"], age: params['dog']["age"],
            description: params['dog']['description'], breeds: params['dog']["breeds"],
            organization_id: params['dog']['organization_id'], status: params['dog']['status'],
        )
        dog.photos=params['dog']['photos']
        dog.contact['address'] = params['dog']['contact']['address']
        if dog.save
			render json: dog, status: :created
		else
			render json: dog.errors.full_messages, status: :unprocessable_entity
		end
    end    
end


