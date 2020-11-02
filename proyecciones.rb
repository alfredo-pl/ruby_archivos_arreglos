def ventas(array,aumento,comienzo,fin)
    prom=0
    prom2=0
    fin.times do |i|
        if i < 3
            prom += array[i].to_f * aumento
            prom2 += array[i].to_f
        elsif i >= 3 && i < 6
            prom2 += array[i].to_f * 1.20
            prom += array[i].to_f
        else
            prom += array[i].to_f
            prom2 += array[i].to_f
        end
        
    end
    #formatiando los datos 
    v1= '%.2f' % prom 
    v2= '%.2f' % prom2
    total = v1+"\n"+v2
  File.write('resultados.data', total)
end
#arreglo con salto de linea
data = open("ventas_base.db").read.split(',')
aumento = 1.10
comienzo= 0
fin= data.size
print ventas(data,aumento,comienzo,fin)