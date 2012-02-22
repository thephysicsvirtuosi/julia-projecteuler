#problem 14
function main()

memo = HashTable{Integer,Integer}()
memo[1] = 0

f(n::Integer) = iseven(n) ? int(n/2) : 3n+1

function length_chain(n)
	#figure out how long the change is for n
	if ~has(memo,n)
		memo[n] = 1 + length_chain(f(n))
	end
	return memo[n]
end

largest = 0

for i=1:1000000
	if i%100000==0
		println("$(i/10000)\%")
	end
	if ~has(memo,i)
		largest = max(largest, length_chain(i))
	end
end

println("Answer is: ", largest)
end

println(@elapsed main())
println(@elapsed main())