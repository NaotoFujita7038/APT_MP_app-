class Public::ReviewsController < ApplicationController
def new
    @review= Review.new
    @review.customer_id = current_customer.id
    
end

def show
     @review=Review.find(params[:id])
end

def create
    @review=Review.new(review_params)
    @review.customer_id = current_customer.id
      #byebug
    @review.save!
     redirect_to review_show_path(@review.id)
 
end 


 private
 
 def review_params
   params.require(:review)
         .permit(:star,:customer_id,:review_comment)
 end
 
 
end