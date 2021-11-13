require 'CSV'

# TODO- enable running the program by passing arguments in CMD ('ruby header_compare.rb benchmark_file #{location_of_file}')

# TODO - convert whole program to OOP 

#Benchmark file reading 
        benchmark_file = CSV.read('benchmark.csv',headers: true).headers.to_s
        benchmark_array = benchmark_file.gsub!(',',' ').split(' ')
        puts benchmark_array.length


#Compared file reading 
        compared_file = CSV.read("file1.csv", headers: true).headers.to_s
        compared_array = compared_file.gsub!(',',' ').split(' ')
        puts compared_array.length

    if (benchmark_array - compared_array).empty?
        print "All good, the headers are the same"
    else 
    # TODO - point which elements of array are missing 
        warn "Oh no, there are some headers missing"
        warn"Expected number of headers: #{benchmark_array.length}, compared headers number: #{compared_array.length} "
        warn "Missing elements of compared header #{benchmark_array - compared_array}"
    end
# TODO - send sample email with error message to me



# raise ArgumentError, "Oh no, there are some headers missing"
# rescue => e
#   puts "Expected number of headers: #{e.benchmark_file_split.length}, compared headers number: #{e.compared_file_split.length} "
#   warn "Missing elements of compared header #{benchmark_file_split - compared_file_split}"
# end




