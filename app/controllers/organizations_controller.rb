
class OrganizationsController < ApplicationController
    def index
        orgs = Organization.all
        render json: orgs
    end
    def show
        org = Organization.find(params[:id])
        render json: org
    end
    def create
        image1=nil
        params['org']["photos"][0] ? image1 = params['org']["photos"][0]["medium"] : nil
        org=Organization.find_or_create_by!(
            name: params['org']["name"],
            image: image1,
            website: params['org']['website'],
            street: params['org']['address']['address1'],
            zip: params['org']['address']['postcode'],
            state: params['org']['address']['state'],
            city: params['org']['address']['city'],
            phone:params['org']['phone'],
            email:params['org']['email'],
            apiid:params['org']['id']
        )
        if org.save
			render json: org, status: :created
		else
			render json: org.errors.full_messages, status: :unprocessable_entity
		end
    end
end
