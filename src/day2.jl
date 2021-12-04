loadvalues() =
  open("src/day2", "r") do f
    split(read(f, String), "\n")[begin:end-1] .|> s -> split(s, " ") |> s -> (s[1], parse(Int, s[2]))
  end

function part1()
  v = loadvalues()
  depth = 0
  forward = 0
  for (action, value) in v
    if action == "forward"
      forward += value
    elseif action == "down"
      depth += value
    else
      depth -= value
    end
  end
  forward * depth
end

println("Day 2")
println(string("Part 1: ", part1()))
