#gets
##data = readlines.map(&:to_i)
puts [
  "30¥n",
  "10¥n",
  "200¥n",
  "50¥n"
].map(&:to_i).inject(:+)
