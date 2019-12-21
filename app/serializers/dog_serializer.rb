class DogSerializer < ActiveModel::Serializer
  attributes :id, :name, :gender, :size, :age, :image,:image2,:image3,:image4, :bio, :at_risk, :breed, :location, :color, :api_dog_id
end
