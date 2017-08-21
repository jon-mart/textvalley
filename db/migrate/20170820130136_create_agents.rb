class CreateAgents < ActiveRecord::Migration[5.1]
  def change
    create_table :agents do |t|
      t.string :name
      t.float :turn_over 
      t.string :itr
      t.string :registration_c
      t.references :user

      t.timestamps
    end
  end
end
