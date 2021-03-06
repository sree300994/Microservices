class Api::V1::ProductsController < ApplicationController
	skip_before_action :verify_authenticity_token
	def index
		@products = Product.all
		render json: @products
	end

	def edit
		@product = Product.find(params[:id])
		render json: @product
	end

	def show
		@product = Product.find(params[:id])
		render json: @product
	end

	def fetch_by_category
		@products = Product.where("category_id = ?", params[:category_id])
		render json: @products
	end
end
