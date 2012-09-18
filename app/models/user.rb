class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :position, :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body

  has_many :folders
  has_many :documents
  has_many :remarks
  has_many :assignments
  has_many :assigned_documents, :class_name => 'Assignment', :foreign_key => :assigned_by

  def name
    (self.first_name || '') + (self.last_name || '')
  end


  def division_members
    User.where(:division_id => self.division_id)
  end

  def division_chief
    @division_chief ||= self.division_members.select{|a| a.has_role? :division_chief }.first
  end

end
