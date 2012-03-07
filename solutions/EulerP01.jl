
function main(N)
	println(sum([x%3==0 || x%5==0 ? x : 0 | x=1:N]))
end

println(@elapsed main(1))
println(@elapsed main(1000))