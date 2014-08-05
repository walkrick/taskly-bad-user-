class TaskList < ActiveRecord::Base

  validates :name, :presence => {:message => "Your Task List could not be created"}

end