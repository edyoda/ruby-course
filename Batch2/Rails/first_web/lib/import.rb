require 'libxml'
class Import
  def self.from_xml
    document = LibXML::XML::Document.file("#{Rails.root}/public/XML/sample.xml")
    document.find("//root/articles/article").each do | each_node |
      id = document.find("//#{each_node.path}/id").first.content
      title = document.find("//#{each_node.path}/title").first.content
      puts "#{Article.count}"
      a = Article.new({title: title})
      a.save(validate: false)
      puts "#{Article.count}"
    end
  end
end
