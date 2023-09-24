function getConcatenation(nums::Vector{Int})
  return vcat(nums, nums)
end

nums1 = [1, 2, 3]
nums2 = [1, 3, 2, 1]

println(getConcatenation(nums1))
println(getConcatenation(nums2))
