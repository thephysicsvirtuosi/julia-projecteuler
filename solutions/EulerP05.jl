#Fifth problem

function main()
	println("The answer is: ", lcm([1:20]...))
end

println(@elapsed main())
println(@elapsed main())