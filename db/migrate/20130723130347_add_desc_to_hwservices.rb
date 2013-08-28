class AddDescToHwservices < ActiveRecord::Migration
  def change
    add_column :hwservices, :desc, :string
  end
end
