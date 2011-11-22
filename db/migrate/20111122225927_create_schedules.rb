class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.integer :employee_id
      t.integer :week_id
      t.integer :rate_this_week
      t.integer :total_hours
      t.integer :total_pay
      t.time :MonStart
      t.time :MonEnd
      t.time :TueStart
      t.time :TueEnd
      t.time :WedStart
      t.time :WedEnd
      t.time :ThuStart
      t.time :ThuEnd
      t.time :FriStart
      t.time :FriEnd
      t.time :SatStart
      t.time :SatEnd
      t.time :SunStart
      t.time :SunEnd

      t.timestamps
    end
  end
end
