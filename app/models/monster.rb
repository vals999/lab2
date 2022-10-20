class Monster < ApplicationRecord
    validates :name, presence: true
    validates :name, uniqueness: true

    has_many :attacks, dependent: :destroy
    has_many :victims, through: :attacks
    has_many :tweets, dependent: :destroy
end