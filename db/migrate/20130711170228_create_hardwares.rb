class CreateHardwares < ActiveRecord::Migration
  def change
    create_table :hardwares do |t|
      t.string :type
      t.string :model
      t.string :serialnr
      t.string :desc
      t.string :location

      t.timestamps
    end
  end
end
