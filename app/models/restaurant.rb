class Restaurant < ApplicationRecord
    belongs_to :admin
    has_many :reservations
end
