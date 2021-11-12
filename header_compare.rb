require 'CSV'

# TODO - enable running the program by passing arguments in CMD ('ruby header_compare.rb benchmark_file #{location_of_file}')
# TODO - convert whole program to OOP 


# TODO - refactoring the names of variables 

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


#Comparing files by deducting arrays from themselves
if (benchmark_array - parts_array).empty?
#     (arr1 - arr2).empty? 
# => true
    print "All good, the headers are the same"
else 
# TODO - point which elements of array are missing 
    warn "Oh no, there are some headers missing"
end

# TODO - send sample email with error message to me



