require 'CSV'
require 'mail'

# TODO- enable running the program by passing arguments in CMD ('ruby header_compare.rb benchmark_file #{location_of_file}')

# TODO - convert whole program to OOP 

#Benchmark file reading 
        benchmark_file = CSV.read('benchmark.csv',headers: true).headers.to_s
        benchmark_array = (benchmark_file.tr('"', '').gsub!(', ', "\n")).split
        puts benchmark_array.length

#Compared file reading 
        compared_file = CSV.read("file1.csv", headers: true).headers.to_s
        compared_array = (compared_file.tr('"', '').gsub!(', ', "\n")).split
        puts compared_array.length

    if (benchmark_array - compared_array).empty?
        print "All good, the headers are the same"
    else 
    # TODO - point which elements of array are missing 
        warn "Oh no, there are some headers missing"
        warn"Expected number of headers: #{benchmark_array.length}, compared headers number: #{compared_array.length} "
        warn "Missing elements of compared header: #{benchmark_array - compared_array}"
    end
# TODO - send sample email with error message to me






