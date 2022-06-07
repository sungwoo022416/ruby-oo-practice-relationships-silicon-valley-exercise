class Startup
    @@all = []
#     - `Startup#name`
#     - returns a **string** that is the startup's name
#   - `Startup#founder`
#     - returns a **string** that is the founder's name
#     - Once a startup is created, the founder cannot be changed.
    attr_accessor :name, :domain
    attr_reader :founder, :time
    def initialize(name, founder, domain, time = Time.now)
        @name = name
        @founder = founder
        @domain = domain
        @time = time

        @@all << self
    end
#   - `Startup.all`
#     - should return **all** of the startup instances
    def self.all
        @@all
    end

#   - `Startup#pivot`
#     - given a string of a **domain** and a string of a **name**, change the domain
#       and name of the startup. This is the only public method through which the
#       domain should be changed.
    public
    def pivot(name, domain)
        @name= name
        @domain = domain
    end
#   - `Startup.find_by_founder`
#     - given a string of a **founder's name**, returns the **first startup** whose founder's name matches
    private
    def self.find_by_founder(founder)
        Startup.all.detect {|start| start.founder == founder}
    end

#   - `Startup.domains`
#     - should return an **array** of all of the different startup domains
    def self.domains
        Startup.all.map(&:domain)
    end
end

