class RenameColumn < ActiveRecord::Migration
  def up
  end

  def down
  end

  def change
    rename_column :hardwares, :type, :typehw
  end

end
