

class Zombie
  @@horde = []
  @@max_speed = 5
  @@plague_level = 10
  @@max_strength = 8
  @@default_speed = 1
  @@default_strength = 3

  def initialize(speed, strength)
    if speedgit > @@max_speed
      @@default_speed
    end
  end

  def encounter
    if outrun_zombie?
      puts "Only the fit survive!"
    elsif survive_attack?
    puts "Any last words?"
  else
    me = Zombie.new
    @@horde << me
  end
end

  def outrun_zombie?
   if rand(1..@@max_speed) > speed
     true
    else
     false
   end
  end

  def survive_attack?
    if rand(1..@@max_strength) > @@max_strength
    else
      false
    end
  end

  def self.all
    @@horde
  end

  def self.new_day
    some_die_off
    increase_plague_level
    spawn
  end

  def self.some_die_off
    zombies = rand(0..10)
    @@horde.delete(zombies)
  end

  def self.spawn
    number_of_zombies = rand(1..@@plague_level)
    number_of_zombies.times do
      zombie = Zombie.new(rand(1..@@max_speed), rand(1..@@max_strength))
      @@horde << zombie
    end
  end

  def self.increase_plague_level
    random = rand(0..2)
    @@plague_level += random
  end


end

puts Zombie.all.inspect # []
Zombie.new_day
puts Zombie.all.inspect # [#<Zombie:0x005626ecc5ebd0 @speed=4, @strength=0>, #<Zombie:0x005626ecc5eba8 @speed=0, @strength=4>, #<Zombie:0x005626ecc5eb80 @speed=4, @strength=4>]
zombie1 = Zombie.all[0]
zombie2 = Zombie.all[1]
zombie3 = Zombie.all[2]
puts zombie1.encounter # You are now a zombie
puts zombie2.encounter # You died
puts zombie3.encounter # You died
