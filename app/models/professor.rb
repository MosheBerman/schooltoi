class Professor < ActiveRecord::Base
  attr_accessible :department, :email, :is_adjunct, :name, :offers_appointment, :office_building, :office_number, :phone, :website
end
