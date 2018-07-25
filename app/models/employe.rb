class Employe < ApplicationRecord
	has_many :assignment , dependent: :destroy
  	has_many :projects, through: :assignment 
end
