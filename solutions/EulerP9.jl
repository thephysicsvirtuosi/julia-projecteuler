#problem 9

function main()
	function is_triple(a,b,c)
		return a^2 + b^2 == c^2
	end

	function is_winner(a,b,c)
		return a+b+c == 1000
	end

	for i=1:1000
		for j=i:1000
			for k=j:1000
				if is_triple(i,j,k)
					if is_winner(i,j,k)
						println("Winner is, ",(i,j,k))
						println("Product is, ", i*j*k)
						return (i,j,k)
					end
				end
			end
		end
	end
end

println(@elapsed main())
println(@elapsed main())