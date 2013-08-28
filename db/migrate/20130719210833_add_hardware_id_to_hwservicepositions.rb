class AddHardwareIdToHwservicepositions < ActiveRecord::Migration
  def change
    add_column :hwservicepositions, :hardware_id, :integer
    add_column :hwservicepositions, :servicelevel_id, :integer
  end
end
