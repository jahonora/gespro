class Project < ApplicationRecord
	has_many :assignment, dependent: :destroy
  	has_many :employes, through: :assignment 
end
