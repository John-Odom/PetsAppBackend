class DogSerializer < ActiveModel::Serializer
  attributes :id, :name, :gender, :size, :age, :photos, :description, :breeds, :contact, :organization_id, :status 
end
