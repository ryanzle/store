class ShopperController < ApplicationController
  include CurrentCart
  before_action :set_cart #assign to @cart
 
  skip_before_action :authorize
  
  def index
    @products = Product.order(:name)

    search_name = params[:search_name]
    search_desc = params[:search_desc]

#THEORETICALLY this code should work, but for some reason search_name and search_desc are both
#somehow not equal to "" but are also equal to "". I'm not really sure how this is working
#so I have the code listed below so you can at least see my thought process.

#    if search_name != "" && search_desc != ""
#      @products = Product.where(name: "#{search_name}", description: "#{search_desc}")
#    elsif search_name != ""
#      @products = Product.where(description: "#{search_desc}")
#    elsif search_desc != ""
#      @products = Product.where(name: "#{search_name}")
#    end
  end
end
