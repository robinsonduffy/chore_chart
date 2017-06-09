class Reward < ActiveRecord::Base
  
  attr_accessible :name, :points, :image, :restricted
  
  validates :name,  :presence => true, 
                    :uniqueness => {:case_sensitve => false}
                    
  validates :points,  :numericality => true,
                      :presence => true
end
