=begin
10 friends are sitting in a circle around a table and decide to play a new game. In it, they count up through the numbers from 1 to 100. The first person says "1", the second says "2" and so on... but with a few catches:

Whenever the number is divisible by 7, they switch directions. So person 6 will say "6", person 7 will say "7", then person 6 again will say "8".
Whenever the number is divisible by 11, they skip the next person for the following number. For instance, if person 3 says "33", person 5 will say "34" instead (person 4 gets skipped).
Your job is to code a program which outputs each number and which person said it. Use it to show that player 1 will say the number "100".
=end

def CounterGame(players, num_final)
  n = 1 # n is player number
  count = 1 # count is count up number
  switch = 0 #switch is to switch directions (1 countercockwise, 0 clockwise)

  while count <= 100

    if (count%7 == 0)
      switch = 1
    end

    if count%11 == 0
      if switch == 0
        n += 1
      else
        n -=1
      end
    end

    if switch == 0
      n += 1
    else
      n -=1
    end

    count += 1
    return n
  end
end