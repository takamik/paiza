##data = gets
data = 'PXaeiTzVap'.chars#.to_a
p data
data.each_with_index do |v, i|
 #p v if i%2==0
end
#puts 'PXaeiTzVap'.chars.to_a.each_with_index do |n, i|
  #print n if i.odd?
#end

#p 3.even?

'PXaeiTzVap'.chars.each_with_index do |v, i|
 print v if i%2==0
end
