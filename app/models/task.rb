class Task < ActiveRecord::Base

  belongs_to :task_list

  validates :task, :presence => {:message => "could not be created"}

end