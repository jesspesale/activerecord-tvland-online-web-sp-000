class Show < ActiveRecord::Base
    has_many :characters
    belongs_to :network
    has_many :actors, through: :characters


    # def build_network(show)
    #     # binding.pry
    #     Network.create(show)
    # end

    def actors_list
        actors.collect{|a| a.full_name}

    end
  
end