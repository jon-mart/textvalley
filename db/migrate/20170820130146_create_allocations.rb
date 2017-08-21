class CreateAllocations < ActiveRecord::Migration[5.1]
  def change
    create_table :allocations do |t|
    	t.datetime :allocation_date
    	t.string :special_notes
    	t.string :allocation_type
    	t.string :status
      t.references :agent
      t.references :user
      t.references :plot
    	t.datetime :closed_date

      t.timestamps
    end
  end
end
