class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :salary 
      t.integer :exp_yrs 
      t.string :address 
      t.string :contact

      t.timestamps
    end
  end
end
