#lcnt = gets
lcnt = "3".to_i
lcnt = "5".to_i

#check_nums = [*1..lcnt**2]
#check_nums = [1, 2, 3, 4, 5, 6, 7, 8, 9]
#puts check_nums

#check_sum = check_nums.inject(:+) / lcnt
check_sum = [*1..lcnt**2].inject(:+) / lcnt
#p check_sum

#lines = readlines
lines = ["6 1 8\n","7 5 3\n","2 0 0"]
#lines = ["2 0 0\n","7 5 3\n","6 1 8"]
lines = [
  "1 15 8 24 0\n",
  "19 3 21 12 10\n",
  "13 0 20 6 4\n",
  "25 9 2 18 11\n",
  "7 16 14 5 23"
]

mahojin = []
col_nums = Array.new(lcnt,0)
#p Array.new(lcnt, Array.new(lcnt,0))
ridx = nil
cidx = [nil, nil]

lines.each_with_index do |line, line_idx|
  #nums = line.strip.gsub(/ /, '').chars.map(&:to_i)
  nums = line.strip.split(/ /).map(&:to_i)
  #p nums

  # 1 zero per 1 line
  #p nums.count(0)
  if nums.count(0) == 1
  
  #sum = nums.inject(:+)
  #p sum
  #if sum != check_sum
    #z = check_sum - sum
    z = check_sum - nums.inject(:+)
    #p z
    #line.gsub!(/0/, z.to_s)
    #p nums.find_index(0)
    nums[nums.find_index(0)] = z
  #end
  elsif nums.count(0) == 2
    ridx = line_idx
  end

#p line
#p nums.join(' ')
  mahojin << nums.join(' ')# + "¥n"
  
  nums.each_with_index do |n, idx|
    col_nums[idx] += n
    #p nums[idx]
    #p row_nums[idx]
  end
end
#p ridx
#p cidx
#p col_nums

if ridx
  col_nums.each do |n|
    z = check_sum - n
    mahojin[ridx].sub!(/0/, z.to_s)
  end
end


#p lines
#p mahojin #.join("¥n")
mahojin.each do |v|
 #puts v
end
#puts mahojin
mahojin.each{|l| puts l }




row = []#Array.new(lcnt)
ridx = 0
zidx = []

lines.each do |line|
  #nums = line.chomp
  #puts nums
  nums =  line.chomp.split(' ')
  #puts nums
  #nums.inject{|sum, i|sum + i} .#inject(:+)
  #p nums.inject{|sum, n| n.to_i}
  
  sum = 0

  #row[ridx] = []#Array.new(lcnt)
  cidx = 0
  nums.each do |n|
    n = n.to_i
    if n == 0
      zidx.push([cidx, ridx])
    end
    sum += n
    row[cidx] = row[cidx].to_i + n
    #p row[cidx]
    cidx+=1
  end
  #p sum
  #p row
  if sum != check_sum
    # 1 zero per 1 line
    if zidx.length == 1
      z = check_sum - sum
      line.gsub!(/0/, z.to_s)
    end
  end

  ridx+=1
end
#p row
#p zidx

if zidx.length > 0
  
end


mahojin = lines.join()
#p mahojin














line = '6 1 8'
#puts line
nums = line.split(' ')
#puts nums

string = "ruby\n"
#p string
#p string.chomp


#inputs = readlines
inputs = ["3
6 1 8
7 5 3
2 0 0"]

#puts inputs

inputs.each do |cmd|
  if cmd.chomp == "Attack"
    dmg += 100
  end
end