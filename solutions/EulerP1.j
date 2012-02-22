
function main()
	println(sum([x%3==0 || x%5==0 ? x : 0 | x=1:1000]))
end

println(@elapsed main())
println(@elapsed main())