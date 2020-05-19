class CreateDoctors < ActiveRecord::Migration[6.0]
  def change
    create_table :doctors do |t|
      t.integer :hospital_id
      t.string :name

      t.timestamps
    end
  end
end
