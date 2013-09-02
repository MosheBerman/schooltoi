class CreateOfficeHours < ActiveRecord::Migration
  def change
    create_table :office_hours do |t|
      t.string :day
      t.time :start
      t.time :end

      t.timestamps
    end
  end
end
