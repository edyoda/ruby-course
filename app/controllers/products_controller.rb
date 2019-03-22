class ProductsController < ApplicationController
  def new
    @product = Product.new
  end
  def create
    image_attr = params["product"]["image"]
    params["product"].delete(:image)
    @product = Product.new(product_params)
    if @product.save
      image_attr["photo"].each do | each_image |
        @product.images.create(photo: each_image)
        # Image.create(photo: each_image, product: @product)
      end
      # manual creation of image
      redirect_to product_path(@product) # status code 202, refresh the page
    else
      render :new  # status code 302, not modified state
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  private
  def product_params
    params.require(:product).permit! #(:name, :email, :password, :confirm_password)
  end
end
