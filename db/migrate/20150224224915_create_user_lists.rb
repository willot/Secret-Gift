class CreateUserLists < ActiveRecord::Migration
  def change
    create_table :user_lists do |t|
    	t.references :user
    	t.references :list

    	t.timestamps null: false
    end
  end
end
