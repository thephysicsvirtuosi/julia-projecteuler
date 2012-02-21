#Second project euler puzzle

N = 4000000
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

tic()
println(fib_ans(N))
toc()