class Project < ApplicationRecord
  validates :name, presence: true, uniqueness:true
  validates :stage, presence: true
end
