class Assignment < ActiveRecord::Base

  attr_accessible :assigned_by, :date_accepted, :document_id, :user_id
  
  belongs_to :user
  delegate :name, :to => :user, :prefix => true
  belongs_to :document
  
  def new_document
    @new_document ||= self.document.is_childless? ? self.document : self.document.children.last
  end
  scope :unread, where(:done => nil)
  scope :undone, where(:done => [false,nil])
  scope :accomplished, where(:done => true)
end
