function numberOfEmployeesWhoMetTarget(hours::Vector{Int}, target::Int)::Int
    return sum(i >= target for i in hours)
end

hours1 = [0,1,2,3,4]
target1 = 2

hours2 = [5,1,4,2,2]
target2 = 6

println(numberOfEmployeesWhoMetTarget(hours1, target1))
println(numberOfEmployeesWhoMetTarget(hours2, target2))