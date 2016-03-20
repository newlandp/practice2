def main
    
    fizzbuzz
    
end

def fizzbuzz
    (1..100).each do |n|
        str = ""
        if n % 3 == 0
            str += "fizz"
        end
        if n % 5 == 0
            str += "buzz"
        end
        if str == ""
            puts n
        else
            puts str
        end
    end
end

main