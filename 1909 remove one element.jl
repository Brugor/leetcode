function canBeIncreasing(nums::Vector{Int})::Bool
    count = 0

    for i in 1:(length(nums)-1)
        if nums[i] >= nums[i+1]
            count += 1
            if count > 1
                return false
            end

            # check if removing nums[i] or nums[i+1] would make it stricly incresing
            if (i==1 || nums[i-1] < nums[i+1]) || (i == (length(nums)-1) || nums[i] < nums[i+2])
                continue

            else
                return false
            end
        end
    end
    return true
end

nums1 = [1,2,10,5,7]
nums2 = [2,3,1,2]
nums3 = [1,1,1]
nums4 = [42,50,54,74,84,86,88,93,104,127,143,160,164,169,170,181,209,223,225,231,247,257,262,274,282,306,307,320,346,357,378,381,387,392,394,404,423,437,444,456,476,491,507,524,527,528,537,558,566,574,169,584,585,609,621,626,632,644,653,661,662,670,676,698,704,710,718,719,730,735,737,746,748,755,776,782,785,795,802,812,822,828,863,866,870,872,877,899,905,909,919,929,940,944,961,963,980,981]
nums5 = [1, 1]

println(canBeIncreasing(nums1))
println(canBeIncreasing(nums2))
println(canBeIncreasing(nums3))
println(canBeIncreasing(nums4))
println(canBeIncreasing(nums5))