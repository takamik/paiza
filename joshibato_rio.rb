
def coffeemix(cmd)
  id, amount = cmd
  #print id, ',', amount , ','
  case id
    when 1
      $oyu = $oyu + amount
    when 2
      $kona = $kona + amount
    when 3
      $oyu = $oyu - amount
      $kona = $kona - amount
  end
  
  #print $oyu, ',', $kona , ','
  #puts ($oyu*100/($oyu+$kona)).floor, ($kona*100/($oyu+$kona)).floor
end

#gets
#lines = readlines
lines = [
  "1 90¥n",
  "2 10¥n"]
$oyu = 0
$kona = 0
lines.each do |line|
  #p line
  #p line.strip.split(/ /).map(&:to_i)
  coffeemix(line.chomp.split(/ /).map(&:to_i))
end
puts '—-'
puts ($oyu*100/($oyu+$kona)).floor, ($kona*100/($oyu+$kona)).floor



lines = [
  "1 50¥n",
  "2 55¥n",
  "3 15¥n",
  "1 20¥n"]
$oyu = 0
$kona = 0
lines.each do |line|
  #p line
  #p line.strip.split(/ /).map(&:to_i)
  coffeemix(line.chomp.split(/ /).map(&:to_i))
end
puts '—-'
puts ($oyu*100/($oyu+$kona)).floor, ($kona*100/($oyu+$kona)).floor



puts '——————/——-/—————-'

def add_oyu(amount)
  $oyu = $oyu + amount
  #return oyu + amount
end

def add_kona(amount)
  $kona = $kona + amount
end

def sub_oyu(amount)
  $oyu = $oyu - amount
end

def sub_kona(amount)
  $kona = $kona - amount
end

def ajimi(amount)
  sub_oyu(amount)
  sub_kona(amount)
  return ($oyu*100/($oyu+$kona)).floor, ($kona*100/($oyu+$kona)).floor
  #return $oyu-amount*$oyu/($oyu+$kona), $kona-amount*$kona/($oyu+$kona)
end

$oyu = 0
$kona = 0
#p $oyu
#p $kona
p add_oyu(90)
p add_kona(10)
p ajimi(0)

$oyu = 0
$kona = 0
#p $oyu
#p $kona
p add_oyu(50)
p add_kona(55)
p ajimi(15)
p add_oyu(20)
p ajimi(0)



class Cup
  @oyu
  @kona
  def initialize(oyu=0, kona=0)
    @oyu = oyu
    @kona = kona
  end
  attr_reader :a
  
  def add!(num)
    @a += num
    self
  end 
end






