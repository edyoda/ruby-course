Gem::Specification.new do |s|
s.name = "mygem"
s.version = '0.0.1'
s.date = Date.today
s.authors = ["manav"]
s.email = ["manav@gmail.com"]
s.summary = "My very first"
s.description = "takes n numbers and return sum of them"
#s.homepage = "http://github.com/maxivak/myfirst"
#s.files = ["lib/mygem3.rb"]
# or
s.files = Dir["{lib}/**/*.rb", "bin/*", "LICENSE", "*.md"]
end
