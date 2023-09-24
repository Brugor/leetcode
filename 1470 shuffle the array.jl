function shuffle(nums::Vector{Int}, n::Int)::Vector{Int}
    return collect(Iterators.flatten(zip(nums[1:n], nums[(n+1):end])))
end

nums1 = [2,5,1,3,4,7]
nums2 = [1,2,3,4,4,3,2,1]
nums3 = [1,1,2,2]

println(shuffle(nums1, 3)) # output
println(shuffle(nums2, 4)) # output
println(shuffle(nums3, 2)) # output