module ProductsHelper

  def blank_img(product)
    base_image = "default-img-400x240.gif"
    if product.image_url.empty?
      base_image
    else
      @product.image_url
    end
  end
end