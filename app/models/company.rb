class Company < ApplicationRecord
    validates :name, presence: true
    validate :name, presence: true
end
