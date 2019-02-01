class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :business_name
      t.text :address
      t.integer :phone_number
      t.text :website
      t.time :hours_of_operation
      t.references :business, foreign_key: true

      t.timestamps
    end
  end
end
