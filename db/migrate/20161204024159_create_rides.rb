class CreateRides < ActiveRecord::Migration[5.0]
  def change
    create_table :rides do |t|
      t.string :location
      t.integer :distance

      t.timestamps
    end
  end
end
