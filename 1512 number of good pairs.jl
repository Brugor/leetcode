# Option 01

function factorial(n)
    """
    factorial(n)
    Calculates the factorial of a non-negative number 'n'

    The factorial of a number 'n' is the product of all positive intergers
    from 1 to 'n'

    #Arguments
    n::Int The number for which the factorial will be calculated.

    # Returns
    The factorial value of 'n'

    # Example
    factorial(5) # Returns 120
    - Step by step operation -> 5 * 4 * 3 * 2 * 1 = 120
    """
    if n == 1 || n == 0
        return 1
    end
    return n * factorial(n - 1)
end

function numIdenticalPairs(nums::Vector{Int})::Int
    """
     numIdenticalPairs(nums::Vector{Int})::Int

    Calculates the number of identical pairs in a vector of integers `nums`.

    An identical pair is defined as a pair of elements in the vector with the same value and the same relative position.

    # Arguments
    - `nums::Vector{Int}`: The vector of integers in which identical pairs will be counted.

    # Returns
    The number of identical pairs in the vector.

    # Behavior
    The function iterates through the `nums` vector and checks if an element has already been visited. If an element has not been visited and occurs more than once in the vector, calculates the number of ways to pick two identical elements from the group of occurrences of that element and adds that value to the count. The function returns the total count of identical pairs in the vector.

    # Example
    ```julia
    nums = [1, 2, 3, 1, 1, 3]
    result = numIdenticalPairs(nums) # Returns 4
    """
    visited = Set{Int}()
    n = 0
    for i in 1:length(nums)
        if !(nums[i] in visited) && count(nums .== nums[i]) > 1
            n_factorial = factorial(count(nums .== nums[i]))
            r_factorial = factorial(count(nums .== nums[i]) - 2)
            n += n_factorial / (r_factorial * 2)
        end
        push!(visited, nums[i])
    end
    return Int(n)
end

nums1 = [1, 2, 3, 1, 1, 3]
nums2 = [1, 1, 1, 1]
nums3 = [1, 2, 3]

println(numIdenticalPairs(nums1))
println(numIdenticalPairs(nums2))
println(numIdenticalPairs(nums3))


# Option 02
function numIdenticalPairs(nums::Vector{Int})::Int
    ans = 0
    for i in 1:length(nums)
        for j in (i+1):length(nums)
            if nums[i] == nums[j]
                ans += 1
            end
        end
    end
    return ans
end

println(numIdenticalPairs(nums1))
println(numIdenticalPairs(nums2))
println(numIdenticalPairs(nums3))
