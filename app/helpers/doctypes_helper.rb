module DoctypesHelper
  
  def doctype_selection *selected
    if selected[0].nil?
      Doctype.all.sort_by{|x| x.name}.collect{|doctype| [doctype.name, doctype.id]}
    else
      options_from_collection_for_select Doctype.all, :id, :name, selected[0]
    end
  end  
  
end
