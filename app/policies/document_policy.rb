class DocumentPolicy < ApplicationPolicy
  #over ride the show method from the ApplicationPolicy
  def show?
    if user.company == record.company #dont need the rest of the 'true else false' part of the code
       true
    else
       false  
 
  end
end