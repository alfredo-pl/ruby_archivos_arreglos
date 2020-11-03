
def chart(array)
    mayor= 0
    array.size.times do |i|
        if mayor < array[i].to_i
            mayor = array[i].to_i
        end
        asteriscos = '*' * array[i].to_i * 2
        print "|"+ asteriscos+"\n"
    end
   eje = '-' * mayor * 2
   print ">"+eje+"\n"
        mayor.times do |i|
            print "#{i+1} "
        end
end

chart(ARGV)