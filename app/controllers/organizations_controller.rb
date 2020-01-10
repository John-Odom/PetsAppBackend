class OrganizationsController < ApplicationController
    def index
        orgs = Organization.all
        render json: orgs
    end
    def show
        org = Organization.find(params[:id])
        render json: org
    end
end
