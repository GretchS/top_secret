class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def domain 
    # email will equal sue@spacex.com, then pull out spacex.com
    email.split('@').last
    #could use rspec to validate this
  end

  def company
    Company.find_by(domain: self.domain)
  end

end
