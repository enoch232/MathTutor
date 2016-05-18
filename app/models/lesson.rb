class Lesson < ApplicationRecord
	belongs_to :topic
	has_many :assignments, dependent: :destroy
end
