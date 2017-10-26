class DocumentPolicy < ApplicationPolicy
  #over ride the show method from the ApplicationPolicy
  def show?
    #if user belongs to the same company as the document
    if user.company == record.company #dont need the rest of the 'true else false' part of the code
       true
    else
       false  
    end
  end

  def update?
    #if the user belongs to the same company as the document
    #update and edit run through the same process, so don't need to write another policy for edit
    if user.company == record.company #dont need the rest of the 'true else false' part of the code
        true
     else
        false  
     end
  end


end