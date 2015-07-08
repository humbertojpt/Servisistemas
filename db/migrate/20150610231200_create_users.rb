class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.integer :cellphone
      t.string :country
      t.string :city

      t.timestamps
    end
  end
end
