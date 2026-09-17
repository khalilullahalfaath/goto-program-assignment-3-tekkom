# f.rb
# Implementasi Ruby dari WHILE program hasil terjemahan mekanis
# (skema Teorema 3.3, Lecture 3 slide 55-56) dari GOTO program f
# pada Problem 3.2. Variabel x3 berperan sebagai variabel kontrol
# "y" (program counter) pada skema terjemahan.

x1 = ARGV[0].to_i
x2 = ARGV[1].to_i

x0 = 0
x3 = 0

# x3 := 1
while x3 != 0
  x3 = x3 - 1
end
x3 = x3 + 1

while x3 != 0

  # IF x3 = 1 THEN
  #   IF x1 = 0 THEN x3 := 9 ELSE x3 := 2 END
  # END
  if x3 == 1
    if x1 == 0
      x3 = 9
    else
      x3 = 2
    end
  end

  # IF x3 = 2 THEN x0 := x0 + 1; x3 := 3 END
  if x3 == 2
    x0 = x0 + 1
    x3 = 3
  end

  # IF x3 = 3 THEN
  #   IF x2 = 0 THEN x3 := 9 ELSE x3 := 4 END
  # END
  if x3 == 3
    if x2 == 0
      x3 = 9
    else
      x3 = 4
    end
  end

  # IF x3 = 4 THEN x0 := x0 + 1; x3 := 5 END
  if x3 == 4
    x0 = x0 + 1
    x3 = 5
  end

  # IF x3 = 5 THEN x2 := x2 - 1; x3 := 6 END
  if x3 == 5
    x2 = x2 - 1
    x3 = 6
  end

  # IF x3 = 6 THEN x1 := x1 - 1; x3 := 7 END
  if x3 == 6
    x1 = x1 - 1
    x3 = 7
  end

  # IF x3 = 7 THEN x3 := 1 END
  if x3 == 7
    x3 = 1
  end

  # IF x3 = 8 THEN x3 := 2 END  (baris mati, L8 tidak pernah dituju)
  if x3 == 8
    x3 = 2
  end

  # IF x3 = 9 THEN x3 := 0 END
  if x3 == 9
    x3 = 0
  end

end

puts "f(#{ARGV[0]}, #{ARGV[1]}) = #{x0}"
