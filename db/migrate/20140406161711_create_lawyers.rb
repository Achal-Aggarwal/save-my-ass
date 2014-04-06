class CreateLawyers < ActiveRecord::Migration
  def change
    create_table :lawyers do |t|
      t.string :code
      t.string :name
      t.integer :exp_year
      t.string :location_city
      t.float :rating_avg

      t.timestamps
    end
  end
end
