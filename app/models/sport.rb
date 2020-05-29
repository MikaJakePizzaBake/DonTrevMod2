class Sport < ApplicationRecord
    has_many :events


    def display(n = 40)    
        disp = "#{sport_name} - #{sub_name}"
        if disp.length > n
            return disp[0..n] + "..."
        else
            return disp
        end
    end
    
    def has_competitors?
        !!Competitor.find_by(sport_name: sport_name, sub_name: sub_name)
    end

    def has_events?
        events.any?
    end

    def self.get_names(with = nil, field = "sport_name", filter = nil)
        case with
            when "Comp"
                return Sport.all.where(filter).select{|x| x.has_competitors?}.pluck(field).uniq
            when "Event"
                return Sport.all.where(filter).select{|x| x.has_events?}.pluck(field).uniq
            else
                return Sport.all.where(filter).pluck(field).uniq
            end
    end

   
end
