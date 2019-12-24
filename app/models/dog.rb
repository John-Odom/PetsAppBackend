class Dog < ApplicationRecord
    has_many :favorites
    has_many :users, through: :favorites
    belongs_to :organization
end
