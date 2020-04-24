class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :description
      t.references :parent_company, class: "Company", null: true

      t.timestamps
    end

    add_index :companies, :name, unique: true
  end
end
