loadvalues() =
  open("src/day1", "r") do f
    parse.(Int, split(read(f, String), "\n")[begin:end-1])
  end

function part1()
  v = loadvalues()
  sum(v[begin:end-1] .< v[begin+1:end])
end

function part2()
  v = loadvalues()
  v = v[begin:end-2] .+ v[begin+1:end-1] .+ v[begin+2:end]
  sum(v[begin:end-1] .< v[begin+1:end])
end

println("Day 1")
println(string("Part 1: ", part1()))
println(string("Part 2: ", part2()))
