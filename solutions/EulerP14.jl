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

lengths = map(length_chain, [1:1000000])

largest = find(lengths==max(lengths))

println("Answer is: ", largest)
end

println(@elapsed main())
#println(@elapsed main())