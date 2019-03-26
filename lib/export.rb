class Export
  def self.in_xml
    Product.find_each do | product |
    builder = Nokogiri::XML::Builder.new do | xml |
      xml.root {
        xml.products {
              xml.product {
              xml.id product.id
              xml.title product.title
            }
        }
      }
    end
    puts builder.to_xml
    File.open("#{Rails.root}/public/XML/product_#{product.id}.xml", "w") {|foo| foo.write(builder.to_xml)}
    end
  end
end
