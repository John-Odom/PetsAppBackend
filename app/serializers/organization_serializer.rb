class OrganizationSerializer < ActiveModel::Serializer
  attributes :id, :website, :name, :street, :zip, :state, :city, :phone, :email, :apiid
end
