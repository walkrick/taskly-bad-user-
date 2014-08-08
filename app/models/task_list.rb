class TaskList < ActiveRecord::Base

  has_many :tasks

  validates :name, :presence => {:message => "could not be created"}

end