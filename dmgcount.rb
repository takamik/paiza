input_lines = ["Attack¥n","Attack¥n","Defence¥n","Defence¥n","Attack¥n"]

dmg = 0

#puts input_lines
input_lines.each do |cmd|
  if cmd.chomp == "Attack"
    dmg += 100
  end
end

puts dmg

