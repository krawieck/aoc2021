loadvalues() =
  open("src/day3", "r") do f
    split(read(f, String), "\n")[begin:end-1] .|> s -> split(s, "") |> s -> map(x -> parse(Int, x), s)
  end

function part1()
  v = loadvalues()
  len = length(v)
  gamma = reduce(+, v) .> len / 2

  binarify(s) = parse(Int, join(Int.(s)), base = 2)

  binarify(gamma) * binarify(.!gamma)
end

println("Day 3")
println(string("Part 1: ", part1()))

