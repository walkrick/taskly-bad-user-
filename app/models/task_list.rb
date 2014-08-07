class TaskList < ActiveRecord::Base

  has_many :tasks

  validates :name, :presence => {:message => "Your Task List could not be created"}

end