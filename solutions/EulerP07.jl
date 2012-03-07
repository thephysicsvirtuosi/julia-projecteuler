#Seventh problem

function erato(n)
	P = [0,2:n]

	for n=2:sqrt(n)
		if bool(P[n])
			P[2*n:n:x] = 0
		end
	end
	P = P[P != 0]
end

function main()
	primes = erato(200000)
	println("The 10,001st prime is $(primes[10001])")
end


println(@elapsed main())
println(@elapsed main())
