#sixth problem

function main()
	ans =  sum([1:100])^2 -sum([x^2 | x=1:100])
	println("Answer is: $ans")
end


println(@elapsed main())
println(@elapsed main())