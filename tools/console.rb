require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
startup1 = Startup.new("I'm first", "Sungwoo", "www.firstone.com")
startup2 = Startup.new("I'm second", "Jared", "www.secondone.com")
startup3 = Startup.new("I'm third", "Malcom", "www.third.one")

venture_capitalist1 = VentureCapitalist.new("Chase Bank")
venture_capitalist2 = VentureCapitalist.new("BOA")
venture_capitalist3 = VentureCapitalist.new("Wells Fargo")

funding1 = FundingRound.new(startup1, venture_capitalist1, "Series C", 1100000000)
funding2 = FundingRound.new(startup2, venture_capitalist2, "Angel", 10000000000)
funding3 = FundingRound.new(startup3, venture_capitalist3, "Series A", 10)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line