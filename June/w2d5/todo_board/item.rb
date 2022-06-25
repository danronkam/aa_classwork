class Item
    def self.valid_date?(date)
        ymd = date.split('-')
        year = ymd[0].to_i
        month = ymd[1].to_i
        day = ymd[2].to_i

        return true if (1..31).include?(day) && (1..12).include?(month)
    else 
        return false
    end

    end
end

Item.valid_date?('2019-10-25') # true
Item.valid_date?('1912-06-23') # true
Item.valid_date?('2018-13-20') # false
Item.valid_date?('2018-12-32') # false
Item.valid_date?('10-25-2019') # false