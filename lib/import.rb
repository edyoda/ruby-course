require 'libxml'
class Import
  def self.read_xml
    document = LibXML::XML::Document.file("#{Rails.root}/public/product.xml")
    document.find("//root/products/product").each do | each_row |
      id = document.find("//#{each_row.path}/id").first.content
      title = document.find("//#{each_row.path}/title").first.content
      puts "Id is #{id} and title is #{title}"
    end
  end
end
