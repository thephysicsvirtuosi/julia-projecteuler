#Fourth Project Euler Puzzle

function main()
	function is_palindrome(n)
		return reverse(string(n)) == string(n)
	end

	biggest = max([is_palindrome(i*j) ? i*j : 0 | i=100:999, j=100:999])

	println("Largest palindrome: ", biggest)
end

println(@elapsed main())
println(@elapsed main())