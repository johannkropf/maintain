class AddHwserviceidToHwservicepositions < ActiveRecord::Migration
  def change
    add_column :hwservicepositions, :hwservice_id, :integer
  end
end
