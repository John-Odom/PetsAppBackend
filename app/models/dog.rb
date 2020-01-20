class Dog < ApplicationRecord
    serialize :photos, Array
    has_many :favorites
    has_many :users, through: :favorites
end
