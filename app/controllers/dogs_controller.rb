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
         dog=Dog.find_or_create_by!(
            name: params['dog']["name"],
            gender: params['dog']["gender"],
            size: params['dog']["size"],
            age: params['dog']["age"],
            description: params['dog']['description'],
            breeds: params['dog']["breeds"],
            photos: [],
            organization_id: params['dog']['organization_id'],
            status: params['dog']['status'],
        )
        # since dog.photos is json, and not a string or integer, we must first declare
        # it as it's class, then we can fill in the array
        dog.photos=params['dog']['photos']
        #Json causing problems with the contact[address] as well
        #JSON.parse would not work JSON.parse(dog.contact['address'])
        dog.contact['address'] = {}
        dog.contact['address']['address1']=params['dog']['contact']['address']['address1']
        dog.contact['address']['address2']=params['dog']['contact']['address']['address2']
        dog.contact['address']['city']=params['dog']['contact']['address']['city']
        dog.contact['address']['state']=params['dog']['contact']['address']['state']
        dog.contact['address']['postcode']=params['dog']['contact']['address']['postcode']
        dog.contact['address']['country']=params['dog']['contact']['address']['country']
        dog.save
        if dog.save
			render json: dog, status: :created
		else
			render json: dog.errors.full_messages, status: :unprocessable_entity
		end
    end    
end


