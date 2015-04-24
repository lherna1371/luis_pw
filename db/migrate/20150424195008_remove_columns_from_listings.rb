class RemoveColumnsFromListings < ActiveRecord::Migration
  def change
    remove_column :listings, :seller_name, :string
    remove_column :listings, :location_name, :string
    remove_column :listings, :address, :string
    remove_column :listings, :city, :string
  end
end
