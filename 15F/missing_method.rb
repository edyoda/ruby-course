class A
  @@class = {A: 3, B: 7, C: 8}
 def there?
    true
 end
 def method_missing(name, *args)
   if name.match(/[A-Z]/)
      @@class[name]
   else
     "#{name} is not found"
     name = name.to_sym
     super
   end
 end
end

a = A.new
puts a.there?
puts a.A
puts a.B
puts a.C
