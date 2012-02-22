#problem 14
function main()

memo = [-1 | i=1:10000000]

memo[1] = 0

f(n::Integer) = iseven(n) ? int(n/2) : 3n+1

function fill(d)
	if memo[d] == -1
		memo[d] = 1 + memo[f(d)]
	end
end

largest = 0
largeind = 0

for i=1:1000000
	if i%100000==0
		println("$(i/10000)\%")
	end
	fill(i)
	if memo[i] > largest
		largest = memo[i]
		largeind = i
	end
end

println("Answer is: ", largeind)
end

println(@elapsed main())
println(@elapsed main())