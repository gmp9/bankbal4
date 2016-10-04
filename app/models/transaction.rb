class Transaction < ActiveRecord::Base
    
    def calc(item1,item2,item3)
        item1 + item2 - item3
    end
    
    def sumwdl(num1,num2,num3)
        num1 + num2 + num3
    end
    
end
