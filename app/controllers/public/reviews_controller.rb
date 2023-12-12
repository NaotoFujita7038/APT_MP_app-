class Public::ReviewsController < ApplicationController
def new
    @review= Review.new
    @review.customer_id = current_customer.id
end

def create
    @review=Review.new(review_params)
    @customer=Customer.new(customer_params)
    @review.customer.id = current_customer.id
    @review.save
end 
end

 private
 
 def review_params
   params.require(:review)
         .permit(:star,:customer_id,:review_comment)
 end
 
 def customer_params
   params.require(:customer)
         .permit(:first_name,:last_name)
 end