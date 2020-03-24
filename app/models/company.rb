class Company < ApplicationRecord
  has_one :domain
  validates :name, presence: true, allow_nil: false
end
