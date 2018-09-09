class Task < ActiveRecord::Base
  has_many :completed_tasks
  has_many :task_days
  has_and_belongs_to_many :kids
  has_and_belongs_to_many :days
  
  attr_accessible :name, :points, :image, :required, :day_ids
  
  validates :name,  :presence => true, 
                    :uniqueness => {:case_sensitve => false}
                    
  validates :points,  :numericality => true,
                      :presence => true
                      
	def valid_on_day(day)
		return true if self.days.length == 0
		return self.days.include? day
  	end
                      
end
