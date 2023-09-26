function kidsWithCandies(candies::Vector{Int}, extraCandies::Int)::Vector{Bool}
    return [(i+extraCandies) >= maximum(candies) for i in candies]
end

candies1 = [2,3,5,1,3]
extraCandies1 = 3

candies2 = [4,2,1,1,2]
extraCandies2 = 1

candies3 = [12,1,12]
extraCandies3 = 10

println(kidsWithCandies(candies1, extraCandies1))
println(kidsWithCandies(candies2, extraCandies2))
println(kidsWithCandies(candies3, extraCandies3))