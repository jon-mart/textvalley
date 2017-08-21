class CreatePlots < ActiveRecord::Migration[5.1]
  def change
    create_table :plots do |t|
    	t.string :building_no
    	t.string :floor
    	t.integer :pillar_count

      t.timestamps
    end
  end
end
