class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :vendor_id
      t.string :name1
      t.string :name2
      t.string :street
      t.string :zip
      t.string :location
      t.string :nationality

      t.timestamps
    end
  end
end
