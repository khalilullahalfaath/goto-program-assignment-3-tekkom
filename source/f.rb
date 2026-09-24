# f.rb - WHILE program untuk Problem 3.2 (hasil terjemahan GOTO -> WHILE)
# x1, x2 = input, x0 = output, x3 = program counter
# Tanpa argumen: baterai uji; dengan 2 argumen: hitung f(x1, x2).

kasus = [[0, 0], [0, 5], [5, 0], [1, 3], [2, 1], [4, 4], [5, 2], [7, 3], [9, 4], [4, 9]]
if ARGV.size >= 2
  kasus = [[ARGV[0].to_i, ARGV[1].to_i]]
end

kasus.each do |x1, x2|
  a1, a2 = x1, x2           # input asli, untuk dicetak
  x0 = 0
  x3 = 1                    # mulai dari label L1

  while x3 != 0
    if x3 == 1              # L1: cek x1 = 0
      x3 = x1 == 0 ? 9 : 2
    end
    if x3 == 2              # L2: x0 := x0 + 1
      x0 = x0 + 1
      x3 = 3
    end
    if x3 == 3              # L3: cek x2 = 0
      x3 = x2 == 0 ? 9 : 4
    end
    if x3 == 4              # L4: x0 := x0 + 1
      x0 = x0 + 1
      x3 = 5
    end
    if x3 == 5              # L5: x2 := x2 - 1
      x2 = x2 - 1
      x3 = 6
    end
    if x3 == 6              # L6: x1 := x1 - 1
      x1 = x1 - 1
      x3 = 7
    end
    if x3 == 7              # L7: GOTO L1
      x3 = 1
    end
    if x3 == 8              # L8: GOTO L2 (dead code)
      x3 = 2
    end
    if x3 == 9              # L9: HALT
      x3 = 0
    end
  end

  puts "f(#{a1}, #{a2}) = #{x0}"
end
