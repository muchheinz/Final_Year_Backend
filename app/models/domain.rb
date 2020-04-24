class Domain < ApplicationRecord
  belongs_to :company
  validates :url, uniqueness: true
end
