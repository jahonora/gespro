class Project < ApplicationRecord
	has_many :assignments, dependent: :destroy
  	has_many :employes, through: :assignments 
end
