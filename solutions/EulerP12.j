#problem 12

function divisors(n)
	divs = [1,n]
	for i=1:iround(sqrt(n))
		if n%i==0
			divs = [divs, i, div(n,i)]
		end
	end
	return divs
end

function num_divisors(n)
	return length(divisors(n))
end

function triangle_nums()
	i = 1
	while true
		produce(div(i*(i+1),2))
		i += 1
	end
end

function main()
	triangs = Task(triangle_nums)
	while true
		test = consume(triangs)
		if num_divisors(test) > 500
			println("The answer is: ", test)
			break
		end
	end
end


println(@elapsed main())
println(@elapsed main())