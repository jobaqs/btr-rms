class Document < ActiveRecord::Base
  attr_accessible :assigned_to, :doctype_id, :document_number, :due_on, :folder_id, :subject_matter, :user_id, :ancestry, :parent_id
  has_ancestry
  
  after_create :auto_assign
  
  belongs_to :folder
  belongs_to :user
  belongs_to :doctype
  
  has_many :docattachments
  has_many :remarks
  has_many :assignments
  
  def auto_assign
    if writer.has_role? :receiving_clerk
      assignment = self.assignments.new
      assignment.user = self.assigned_to
      assignment.assigned_by = self.user_id
      assignment.save
    end
  end
  def self.no_assignments?
    self.assignments.blank? && self.assigned_to.nil?
  end
  def writer
    @writer ||= User.find self.user_id
  end
end
