##p, d= gets.split(/ /) .map(&:to_i)
p, d= "6 5".split(/ /).map(&:to_i)

##data = readlines.map(&:to_i)
data = [
  "4000¥n",
  "3000¥n",
  "1000¥n",
  "2000¥n",
  "5000¥n",
  "50000¥n",
  "10000¥n",
  "3000¥n",
  "13000¥n",
  "7300¥n",
  "1000¥n"].map(&:to_i)

days = data[p..p+d-1]
days_max = days.max
prices = data[0..p-1]
prices.select! { |n| n < days_max }
prices = prices.sort.reverse!

p_min=(prices[-1]*2 < prices[-1]+prices[-2])? prices[-1]*2 : prices[-1]+prices[-2]
p_max=prices[0]*2
idx_half = prices.length/2

days.each do |n|

  if p_min >= n
    puts 0
    next
  end
  
  if p_max <= n
    puts p_max
    next
  end
 
  half = n / 2
  if prices.count(half) > 0
    puts n
    next
  end

  pre = 0
  sum = 0
  isPitari = false

  prices.each_with_index do |price, idx|
    next if price >= n

    check = n - price

    if prices.count(check) > 0
      puts n
      isPitari = true
      break
    end

    pre = prices.find { |m| m <= check }
    sum = (sum < price+pre) ? price+pre : sum
    break if idx > idx_half
  end
  next if isPitari
  
  puts sum
end







##p, d= gets.split(/ /) .map(&:to_i)
p, d= "6 5".split(/ /).map(&:to_i)
#price = readlines
#prices[0..4],days[5..6] = [
##data = readlines.map(&:to_i)
data = [
  "4000¥n",
  "3000¥n",
  "1000¥n",
  "2000¥n",
  "5000¥n",
  "50000¥n",
  "10000¥n",
  "3000¥n",
  "13000¥n",
  "7300¥n",
  "1000¥n"].map(&:to_i)
#p p
#p d
days = data[p..p+d-1]
days_max = days.max
prices = data[0..p-1]
prices.select! { |n| n < days_max }
prices = prices.sort.reverse!
#p prices.last
p prices, days
p_min=(prices[-1]*2 < prices[-1]+prices[-2])? prices[-1]*2 : prices[-1]+prices[-2]
p_max=prices[0]*2
idx_half = prices.length/2
p p_min, p_max, idx_half

idx=1
days.each do |n|
  print idx.to_s + ' day: '
  idx+=1

  if p_min >= n
    puts 0# 'ng=0'
    #p prices[0]
    next
  end
  
  if p_max <= n
    puts p_max
    next
  end

  #pr_a = prices.select { |n| n < days_max }
  pr_a = prices
 
  half = n / 2
  #p check
  #p pr_a.count(half)
  if pr_a.count(half) > 0
    puts n
    next
  end
  
  #nから引いた数が配列内に存在すれば、それが正解
  #無ければ、超えるまで調べて、手前の数が正解
  #だから、降順のほうが回しやすいかももも
  pre = 0
  sum = 0
  isPitari = false
  #idx_half = pr_a.length/2
  #p idx_half
  pr_a.each_with_index do |pr, idx|
    next if pr >= n
    #print idx,' '

    check = n-pr
    #print n, '=', pr, '+', check, 'or'
    #ピタリ賞
    if pr_a.count(check) > 0
      puts n
      isPitari = true
      break
    end
    
    #checkに近い数とprを足した奴を比較、近しい方を取っておく
    #pre= pr+checkの下に近しい数、または取ってある奴
    #pre = pr+check
    pre = pr_a.find { |m| m <= check }#.to_i
    sum = (sum < pr+pre) ? pr+pre : sum
    #print pre, ' '
    #print sum
    break if idx > idx_half
  end
  next if isPitari
  
  puts sum
  #puts 'hoge'
end
























