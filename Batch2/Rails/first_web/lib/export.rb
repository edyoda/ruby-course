require 'csv'
require 'json'
class Export
  def self.in_xml
      builder = Nokogiri::XML::Builder.new { | xml |
        xml.root {
            xml.articles {
              Article.all.each do | art |
                xml.article {
                  xml.id art.id
                  xml.tile art.title
                }
              end
            }
        }
      }
      File.open("#{Rails.root}/public/XML/sample.xml", "w") {| foo| foo.write(builder.to_xml)}
  end
#Article.last.to_json
#JSON.load(Article.last.to_json)
  def self.in_csv
    CSV.open("#{Rails.root}/public/sample.csv", "w") do | csv|
      csv << Article.column_names
      sql_hash = ActiveRecord::Base.connection.select_all("select * from articles")
      sql_hash.each do | art |
        csv << art.values
      end
    end
  end
  def self.in_json
    
  end
end
