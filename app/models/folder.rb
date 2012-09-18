class Folder < ActiveRecord::Base
  has_ancestry
  attr_accessible :division_id, :subject_matter, :title, :user_id, :parent_id
  
  belongs_to :user
  has_many :documents
end
