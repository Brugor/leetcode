function buildArray(nums::Vector{Int})
    return [nums[nums[i]+1] for i in 1:length(nums)]
end

nums1 = [0, 2, 1, 5, 3, 4]
nums2 = [5, 0, 1, 2, 3, 4]

println(buildArray(nums1))
println(buildArray(nums2))