class Company < ApplicationRecord
  has_many :domains
  validates :name, presence: true, allow_nil: false
end
