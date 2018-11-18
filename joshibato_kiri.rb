#gets
c = "8"
#cells = gets
cells = '0 6 -2 -2 0 1 -1 0'.split(/ /).map(&:to_i)
#cells = '0 1 2 0 1 0'.split(/ /).map(&:to_i)
#cells = '0 1 0 1 0'.split(/ /).map(&:to_i)
goal = cells.length-1
#gets
d = "6"
#dice = readline.map(&:to_i)
dice = [
  "7¥n",
  "3¥n",
  "4¥n",
  "2¥n",
  "5¥n",
  "10¥n"].map(&:to_i)
#dice = [
#  "1¥n",
#  "1¥n",
#  "2¥n",
#  "3¥n"].map(&:to_i)
#dice[0] = 1
p cells, dice
p goal
#(1..100).inject(dice[0]) do |x, i|
#x = dice[0]

def is_goal(x, w, goal)
  return 'NO' if x > goal || (x < goal && w == 0)
  return 'YES' if x == goal
  return ''

end

def walk(x, cells, goal)
  print x, ':', cells[x], '->'
  #res = 'NO'
  
  #return res if x > goal || (x < goal && cells[x] == 0)
  #return 'YES' if x == goal

  res = is_goal(x, cells[x], goal)
  return res if res != ''
  
  #(1..100).each do |i|
  loop do
    #print i, ': '
    #p x
    #x  = 0 if x == nil
    pre = x
    x += cells[x]
    #p x, cells[x]
    print x, ':', cells[x], '->'
    #if x < goal && cells[x] == 0
    #  break
    #elsif x > goal
    #  break
    #elsif x == goal
    #  res = 'YES'
    #  break
    #end
    res = is_goal(x, cells[x], goal)
    return res if res != ''
  
    #p '—-', pre, cells[pre], x, cells[x], '—-'
    cells[pre] = 0
  end
  return res
end

#walk(dice[0], cells, goal)
dice.each { |n| puts walk(n, cells, goal) }



if false
x = dice[0]
p '1:' + x.to_s
x += cells[x]
p '2:' + x.to_s
x += cells[x]
p '3:' + x.to_s
x += cells[x]
p '4:' + x.to_s
x += cells[x]
p '5:' + x.to_s
end


idx = []
g_idx = cells.length-1
#p g_idx
cells.each_with_index do |n, i|
  #p n, g_idx
  if n == 0
    idx[i] = 'n'
    next
  end
  
  idx[i] = n + i
  if idx[i] == g_idx
      idx[i] = 'g'
  end
end
#p idx