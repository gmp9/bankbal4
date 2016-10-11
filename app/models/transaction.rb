class Transaction < ActiveRecord::Base
    
    def calc(item1,item2,item3)
        item1 + item2 - item3
        #in case a number is accidentally left out(nil), raise an exception & return a large #.
        rescue
          55555.55
    end
    
    def sumwdl(num1,num2,num3)
        num1 + num2 + num3
        #in case a number is accidentally left out(nil), raise an exception & return a large #.
        rescue
          99999.99
    end
    
end
