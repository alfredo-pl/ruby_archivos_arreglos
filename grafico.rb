
def chart(array)
    
    array.size.times do |i|
        asteriscos = '*' * array[i].to_i * 2
        print "|"+ asteriscos+"\n"
    end
  
end

chart(ARGV)