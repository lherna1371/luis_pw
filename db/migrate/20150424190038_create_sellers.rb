class CreateSellers < ActiveRecord::Migration
  def change
    create_table :sellers do |t|
      t.string :name
      
      t.timestamps
    end
    
    add_reference :locations, :seller, index: true
  end
end
