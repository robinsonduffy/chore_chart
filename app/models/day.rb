class Day < ActiveRecord::Base
	has_and_belongs_to_many :tasks
	
	attr_accessible :id, :name
	
	validates :name,  :presence => true, 
                      :uniqueness => {:case_sensitve => false}
end
