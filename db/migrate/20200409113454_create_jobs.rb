class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :query
      t.string :job
      t.boolean :completed
      t.timestamps
    end

    add_index :jobs, :query, unique: true
  end
end
