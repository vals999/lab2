class Monster < ApplicationRecord
    validates :name, presence: true
    validates :name, uniqueness: true
    validates :must_have_more_18_when_monster_level_scare_5
    
    def must_have_more_18_when_monster_level_scare_5
        if  (monster.scare_level > 5 && (2022 - victim.birthdate.year)<18)
            errors.add(:base, :invalid, message: "level scare must be less than 5 for person minor 18 age old")
        end
    end

    has_many :attacks, dependent :destroy
    has_many :victims, through: :attacks
end