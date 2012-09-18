module DivisionsHelper
  
    def division_selection *selected
    if selected[0].nil?
      Division.all.sort_by{|x| x.name}.collect{|division| [division.name, division.id]}
    else
      options_from_collection_for_select Division.all, :id, :name, selected[0]
    end
  end
  
end
