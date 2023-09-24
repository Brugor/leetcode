function finalValueAfterOperations(operations::Vector{String})
    return sum(occursin("+", i) ? 1 : -1 for i in operations)
end

operations1 = ["--X","X++","X++"]
operations2 = ["++X","++X","X++"]
operations3 = ["X++","++X","--X","X--"]

println(finalValueAfterOperations(operations1)) # output 1
println(finalValueAfterOperations(operations2)) # output 3
println(finalValueAfterOperations(operations3)) # output 0