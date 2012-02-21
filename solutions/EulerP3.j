

function main()
	N = 600851475143
	function is_prime(n::Int64)
		if n==2
			return true
		elseif n%2==0
			return false
		end
		for y=3:2:int(sqrt(n))
			if n%y==0
				return false
			end
		end
		return true 
	end

	function find_a_prime_factor(n::Int64)
		if n%2==0
			return 2
		end
		for x=3:2:div(n,2)+1
			if n%x==0
				if is_prime(x)
					return x
				end
			end
		end
		return n
	end

	tic()
	factors = {}

	while N>1
		factor = find_a_prime_factor(N)
		factors = append(factors,factor)
		N = div(N,factor)
	end

	println(factors)
	println("The largest factor is: ",max(factors))
	toc()

end

main()