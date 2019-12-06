class DogSerializer < ActiveModel::Serializer
  attributes :id, :name, :gender, :size, :age, :image, :bio, :at_risk, :breed, :location, :color
end
