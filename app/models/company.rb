class Company < ApplicationRecord
  has_many :domains
  has_many :subsidiaries, class_name: "Company", foreign_key: "parent_company_id"
  belongs_to :parent_company, class_name: "Company", optional: true
  validates :name, presence: true, allow_nil: false, uniqueness: true
  def children
    subsidiaries.map do |subsidiary|
      object = subsidiary.as_json

      object[:domains] = subsidiary.domains
      [object] + subsidiary.children
    end
  end
end
