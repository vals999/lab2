class Victims < ApplicationRecord
    validates :name, presence: true
    belongs_to :monster
end