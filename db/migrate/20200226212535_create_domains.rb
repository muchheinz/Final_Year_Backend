class CreateDomains < ActiveRecord::Migration[6.0]
  def change
    create_table :domains do |t|
      t.string :url
      t.references :company, null: false, foreign_key: true
      t.json :details

      t.timestamps
    end

    add_index :domains, :url, unique: true
  end
end
