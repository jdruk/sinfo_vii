class Course < ActiveRecord::Base
	enum category: [:first_day, :second_day]

	validates :name, presence: true
	validates :description, presence: true

	has_many :registereds
	has_many :users,
		:through => :registereds
end
