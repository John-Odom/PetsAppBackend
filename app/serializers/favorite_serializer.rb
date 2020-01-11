class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :dog_id, :user_id, :api_dog_id
end
