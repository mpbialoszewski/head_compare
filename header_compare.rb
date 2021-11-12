require 'CSV'

#Benchmark file reading 
benchmark_file = CSV.read('benchmark.csv',headers: true).headers.to_s
benchmark_file_split = benchmark_file.tr('"', '').gsub!(', ', "\n")
benchmark_to_parts = benchmark_file_split.split
benchmark_array = Array.new
benchmark_array.push(benchmark_to_parts)


#Compared file reading 
compared_file = CSV.read("file1.csv", headers: true).headers.to_s
compared_file_split = compared_file.tr('"', '').gsub!(', ', "\n")
compared_to_parts = compared_file_split.split
parts_array = Array.new
parts_array.push(compared_to_parts)


#Comparing files be deducting arrays from themselves
if (benchmark_array - parts_array).empty?
#     (arr1 - arr2).empty? 
# => true
    print "All good, the headers are the same"
else 
    warn "Oh shit, there are some headers missing"
end


# TODO - point which elements of array are missing 
# TODO - enable to pass two arguments when running (OOP) 


#Debugging with print lol

print benchmark_file.class
print "\n"
print '-----_VERSUS-------'
print "\n"
print compared_file.class
print "\n"
print '-----SPLIT---------'
print "\n"
print compared_file_split.class
print "\n"
print '-----Array ?-------'
print "\n"
puts compared_to_parts.class
print "\n"
print '-----Array ?-------'
print "\n"
puts benchmark_to_parts.class




