class CreateDomains < ActiveRecord::Migration[6.0]
  def change
    create_table :domains do |t|
      t.string :urls, array: true, default: []
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
