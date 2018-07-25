class Assignment < ApplicationRecord
  belongs_to :employe
  belongs_to :project
  validates :employe, uniqueness: { scope: :project, message: "Association already done" }
end
