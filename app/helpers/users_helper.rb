require 'csv'
module UsersHelper
  def create_csv
    dir_location = "#{Rails.root}/public/"
    filename = "users.csv"
    filepath = dir_location + filename
    CSV.open(filepath, "a+") do | csv |
      csv << ["id", "name", "email", "password", "confirm_password", "created_at", "updated_at"]
      Product.all.each do | product |
        csv << JSON.parse(product.to_json).values
      end
    end
    return filepath
  end
end
