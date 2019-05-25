class Project < ApplicationRecord
  validates :name, presence: true, uniqueness:true
  validates :stage, inclusion: {in: %w(design construction finished),
    message: "%{value} is not a valid stage" }
end
