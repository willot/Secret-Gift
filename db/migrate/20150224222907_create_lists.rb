class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
    	t.string :name
    	t.integer :range_high
    	t.integer :range_low
    	t.text :description
    	t.date :date
    	t.string :period
      t.references :user 
      

      t.timestamps null: false
    end
  end
end
