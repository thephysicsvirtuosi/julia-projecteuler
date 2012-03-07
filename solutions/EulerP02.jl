#Second project euler puzzle

function main(N)
	function fib_ans(n::Int64)
		term1 = 1
		term2 = 1
		next = 0
		summ = 0

		while term1 <= n
			next = term1 + term2
			if next%2 ==0
				summ += next
			end
			term1 = term2
			term2 = next
		end
		return summ
	end
	println("The answer is: ", fib_ans(N))
end

println(@elapsed main(4000000))
println(@elapsed main(4000000))