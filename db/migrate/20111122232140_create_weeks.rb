class CreateWeeks < ActiveRecord::Migration
  def change
    create_table :weeks do |t|
      t.integer :business_id
      t.date :start_date
      t.integer :payroll_total
      t.integer :week_of_year

      t.timestamps
    end
  end
end
