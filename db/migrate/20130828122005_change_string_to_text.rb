class ChangeStringToText < ActiveRecord::Migration
  def up
  end

  def change
    change_column :servicelevels, :long_desc, :text
  end

  def down
  end
end
