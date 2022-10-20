class Attack < ApplicationRecord
    belongs_to :monster
    belongs_to :victim

    validate :scare_level_cant_pass_5_when_victim_is_a_teen

    def scare_level_cant_pass_5_when_victim_is_a_teen
        if  (monster.scare_level > 5 && (2022 - victim.birthdate.year)<18)
            errors.add(:scare_level, "level scare must be less than 5 for person minor 18 age old")
        end
    end
end