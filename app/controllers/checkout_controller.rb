class CheckoutController < ApplicationController
	before_action :authenticate_user!

	def create
		#pagseguro

		payment = PagSeguro::PaymentRequest.new
		user = User.find(params[:id])

		
			payment.reference = user.id

			if user.shirt != ''
				payment.items << {
					id: 2,
					description: "Camisa " + user.shirt,
					amount: 22
				}
			end 

			payment.items << {
				id: 1,
				description: "Inscrição Básica",
				amount: 20
			}

			if user.courses.count == 1
				user.courses.each do |curso|
					payment.items << {
						id: curso.id,
						description: curso.name,
						amount: 10
					}
				end
			end

			if user.courses.count == 2
				user.courses.each do |curso|
					payment.items << {
						amount: 7.5,
						description: curso.name		
					}
				end
			end



			response = payment.register
			if response.errors.any?
				raise response.errors.join("\n")
			else
				puts response.code
				user.token = response.code
				user.save
				redirect_to response.url
			end

		
	end
end
