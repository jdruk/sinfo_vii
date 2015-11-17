class CheckoutController < ApplicationController
	def create
		#pagseguro
		payment = PagSeguro::PaymentRequest.new
		user = User.find(params[:id])
		payment.reference = user.id

		
		response = payment.register
		if response.errors.any?
      		raise response.errors.join("\n")
    	else
    		puts response.code
    		user.token
      		redirect_to response.url
    	end
	end
end
