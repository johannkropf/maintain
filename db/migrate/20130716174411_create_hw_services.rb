class CreateHwServices < ActiveRecord::Migration
  def change
    create_table :hw_services do |t|
      t.string :ordernr
      t.string :subordernr
      t.date :startdate
      t.integer :validity
      t.string :supplier_nr
      t.date :issue_date
      t.integer :period_of_notice
      t.integer :renewal_auto

      t.timestamps
    end
  end
end
