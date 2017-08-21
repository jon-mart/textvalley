class CreateTransations < ActiveRecord::Migration[5.1]
  def change
    create_table :transations do |t|
    	t.references  :user
    	t.references  :allocation

      t.timestamps
    end
  end
end
