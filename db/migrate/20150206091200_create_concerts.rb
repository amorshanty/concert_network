class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
    	t.text :band
    	t.text :venue
    	t.text :city
    	t.datetime :date
    	t.integer :price
    	t.text :description



      t.timestamps null: false
    end
  end
end
