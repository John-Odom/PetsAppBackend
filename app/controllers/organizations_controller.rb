
class OrganizationsController < ApplicationController
    def index
        orgs = Organization.all
        render json: orgs
    end
    
    def show
        org = Organization.find(org_params[:id])
        render json: org
    end

    def create
        org=Organization.find_or_create_by!(name: org_params["name"], website: org_params["website"],
        phone: org_params["phone"], email:org_params["email"], apiid: org_params["id"], street:org_params["address"]["address1"],
        city:org_params["address"]["city"], state:org_params["address"]["state"], zip:org_params["address"]["postcode"])
        if org.save
			render json: org, status: :created
		else
			render json: org.errors.full_messages, status: :unprocessable_entity
		end
    end

    private
  
    def org_params
    params.require(:org).permit(:id, :name, :website, :website, 
    :phone, :email, :id, photos:[:small, :medium, :large, :full], address:[:city, :state, :address1, :postcode])
    end 
end
