# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

case Rails.env
when "development"
	unless Kid.exists?(:name => "Test Kid")
   		Kid.create(:name => "Test Kid")
   	end
   	unless User.exists?(:email => "test@example.com")
   		user = User.create(:email => "test@example.com", :password => "123456", :confirm_password => "123456")
   		user.update_attribute(:admin, true)
   	end
when "production"
   # do nothing
end

if Day.all.length == 0
	Day.create(:id => 0, :name => "Monday")
	Day.create(:id => 1, :name => "Tuesday")
	Day.create(:id => 2, :name => "Wednesday")
	Day.create(:id => 3, :name => "Thursday")
	Day.create(:id => 4, :name => "Friday")
	Day.create(:id => 5, :name => "Saturday")
	Day.create(:id => 6, :name => "Sunday")
end

