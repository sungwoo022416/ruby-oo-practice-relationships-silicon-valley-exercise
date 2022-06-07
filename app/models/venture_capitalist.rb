class VentureCapitalist
    @@all = []

    attr_reader :name
#     - `VentureCapitalist#name`
#     - returns a **string** that is the venture capitalist's name
    def initialize(name)
        @name = name

        @@all << self
    end
#   - `VentureCapitalist.all`
#     - returns an array of all venture capitalists
    def self.all
        @@all
    end

#   - `VentureCapitalist#total_worth`
#     - returns a **number** that is the total worth of this investor (e.g., think of it as how much money they have)
   def sort_venture
        FundingRound.all.select {|venture| venture.venture_capitalist == self}
   end

    def total_worth
        sort_venture.map(&:investment).sum
    end
#   - `VentureCapitalist.tres_commas_club`
#     - returns an array of all venture capitalists in the Trés Commas club (they have more then 1,000,000,000 `total_worth`)
    def self.tres_commas_club
        VentureCapitalist.all.select {|investor| investor.total_worth > 1000000000}.map(&:name).uniq
    end
  
end
