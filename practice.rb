def main
    
    #fizzbuzz
    #puts sum_of_multiples_of_3_and_5_below_max(1000)
    puts sum_of_even_fib_numbers_below_max(4000000)
    
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

def sum_of_multiples_of_3_and_5_below_max(max)
    running_total = 0
    (1...max).each do |num|
        if num % 3 == 0 || num % 5 == 0
            running_total += num
        end
    end
    running_total
end

def sum_of_even_fib_numbers_below_max(max)
    first = 1
    second = 2
    temp = 0
    a = []
    a.push(first, second)
    
    while second < max do
        temp = first
        first = second
        second += temp
        a.push(second) if second <= max
    end
    
    sum = 0
    a.each { |n| sum += n if n % 2 == 0 }
    sum
    
end

main