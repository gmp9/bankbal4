class Transaction < ActiveRecord::Base
    
    def calc(item1,item2,item3)
        item1 + item2 - item3
    end
end
