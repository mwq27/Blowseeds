class PagesController < ApplicationController
  
  def home
    @title = "Home"
    @product = Product.new if signed_in?
  end
  
  
end