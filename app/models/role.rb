class Role < ActiveRecord::Base
    has_many :auditions

    def actors
        self.auditions.map do |aud|
            aud.actor
        end 
    end

    def locations 
        self.auditions.map do |aud|
            aud.location
        end
    end

    def lead 

    end
    
    def understudy

    end

end