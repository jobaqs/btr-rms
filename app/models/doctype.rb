class Doctype < ActiveRecord::Base
  attr_accessible :duration, :name, :user_id
  
  has_many :documents
end
