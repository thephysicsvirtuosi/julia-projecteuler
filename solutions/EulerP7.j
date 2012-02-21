#Seventh problem

function is_prime(x,primelist)
	for i=primelist
		if x%i==0
			return false
		end
	end
	return true
end

function prime_gen()
	produce(2)
	produce(3)
	primes = [3]
	x = 5
	while true
		if is_prime(x,primes)
			primes = append(primes,x)
			produce(x)
		end
		x += 2
	end
end

tic()
primes = Task(prime_gen)
for i=1:10000
	consume(primes)
	if i%1000 == 0
		println("$(i/100)\%")
	end
end

println("The 10,001st prime is $(consume(primes))")
toc()