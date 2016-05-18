class Topic < ApplicationRecord
  has_many :lessons, dependent: :destroy
  has_many :assignments, dependent: :destroy
end
