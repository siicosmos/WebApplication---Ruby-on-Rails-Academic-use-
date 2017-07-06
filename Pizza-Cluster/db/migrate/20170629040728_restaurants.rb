class Restaurants < ActiveRecord::Migration[5.1]
  def self.up
  	create_table :shops do |t|
  		t.column :number, :integer, :null => false
  		t.column :name, :text, :null => false
  		t.column :address, :string
  		t.column :postalcode, :string, :limit => 6
  		t.column :contact, :string
  	end

    Shop.create : number => 1, name => "Dominos", address =>"abc", postalcode => "xyz", contact => "3333"
    Shop.create : number => 2, name => "Pizza Hut", address =>"SFU", postalcode => "ayz", contact => "4444"
    Shop.create : number => 3, name => "Panago", address =>"abc", postalcode => "xyz", contact => "3333"

  end
end
