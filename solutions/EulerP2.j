

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


function fib_producer()
	last = 1
	produce(last)
	lastlast = 1
	produce(lastlast)
	while true
		new = last + lastlast
		produce(new)
		lastlast = last
		last = new
		# println("$new, $last, $lastlast")
	end
end

fibs = Task(fib_producer)

tic()

tot = 0
fib = 2.0

while fib < N
	fib = consume(fibs)
	if iseven(fib)
		tot += fib
	end
end

println("$tot")
toc()

