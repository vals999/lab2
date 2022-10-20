class Monsters < ApplicationRecord
    validates :name, presence: true
    validates :name, uniqueness: true
    has_many :victims
end