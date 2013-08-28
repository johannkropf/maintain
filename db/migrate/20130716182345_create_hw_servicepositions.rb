class CreateHwServicepositions < ActiveRecord::Migration
  def change
    create_table :hw_servicepositions do |t|
      t.date :start_date
      t.date :end_date
      t.decimal :amount
      t.string :period

      t.timestamps
    end
  end
end
