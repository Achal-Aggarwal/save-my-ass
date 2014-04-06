class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :lawyer_code
      t.string :code
      t.string :name
      t.integer :charges

      t.timestamps
    end
  end
end
