class CreateProfessors < ActiveRecord::Migration
  def change
    create_table :professors do |t|
      t.string :name
      t.string :office_building
      t.string :office_number
      t.string :department
      t.boolean :is_adjunct
      t.boolean :offers_appointment
      t.string :email
      t.string :phone
      t.string :website

      t.timestamps
    end
  end
end
