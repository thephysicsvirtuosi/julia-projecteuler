#problem 10

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
	total = sum(erato2(2000000))
	println("Total is: ", total)
end


println(@elapsed main())
println(@elapsed main())