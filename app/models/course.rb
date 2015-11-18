class Course < ActiveRecord::Base
	enum category: [:first_day, :second_day]

	validates :name, presence: true
	validates :description, presence: true

	has_many :registereds
	has_many :users,
		:through => :registereds

	def self.available
		cursos = Course.all
		confirmados = cursos.to_a.select {|c| c.registereds.where(pay: 1).count < 30 }
	end	
end
