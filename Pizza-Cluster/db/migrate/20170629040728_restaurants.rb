class Restaurants < ActiveRecord::Migration[5.1]
  def change
  	create_table :retails do |t|
  		t.column :number, :integer, :null => false
  		t.column :name, :text, :null => false
  		t.column :address, :string
  		t.column :postalcode, :string, :limit => 6
  		t.column :contact, :string
  	end
  end
end
