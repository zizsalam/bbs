class CreateOffers < ActiveRecord::Migration[7.1]
  def change
    create_table :offers do |t|
      t.decimal :price
      t.integer :estimated_time
      t.references :intervention, null: false, foreign_key: true

      t.timestamps
    end
  end
end
