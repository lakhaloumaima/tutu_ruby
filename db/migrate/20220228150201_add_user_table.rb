class AddUserTable < ActiveRecord::Migration[7.0]
  def self.up
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :role

      t.timestamps

    end  
  end

  def self.down
    drop_table :users
  end
end
