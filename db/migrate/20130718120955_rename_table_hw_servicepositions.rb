class RenameTableHwServicepositions < ActiveRecord::Migration
  def up
  end

  def change
	rename_table(:hw_servicepositions, :hwservicepositions)
	rename_table(:hw_services, :hwservices)
  
  end 
  
  def down
  end
end
