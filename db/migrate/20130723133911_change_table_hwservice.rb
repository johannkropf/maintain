class ChangeTableHwservice < ActiveRecord::Migration
  def up
  end
  
  def change
	rename_column :hwservices, :supplier_nr, :vendor_id
  end 
  
  def down
  end
end
