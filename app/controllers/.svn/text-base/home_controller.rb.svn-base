class HomeController < ApplicationController
  layout 'main'
  def index
    @assignments = current_user.assignments.undone
    @assigned_documents = current_user.assigned_documents
  end
end
