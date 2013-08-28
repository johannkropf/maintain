class CreateServicelevels < ActiveRecord::Migration
  def change
    create_table :servicelevels do |t|
      t.string :level
      t.string :short_desc
      t.string :long_desc

      t.timestamps
    end
  end
end
