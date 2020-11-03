
def notas_mas_alta(array)
    #convertimos el archivo en un arreglo
    fil = array.map{|x| x.split(',')}
   
    height= fil.size
    #inicializamos un arreglo 
    notas_mayores=[]
    #inicializamos
    mayor=0
    #alto 
    height.times do |i|
        #la cantidad de iteraciones que tiene que dar en la fila[i]
        fil[i].size.times do |j|
            if mayor < fil[i][j].to_i
                #asigamos la nota mayor en la variable
                mayor = fil[i][j].to_i
            end
        end
        #ingresamos la nota mayor 
        notas_mayores[i] = mayor
        #reiniciamos el valor
        mayor=0
    end
    notas_mayores
    #guardar los datos de notas_mayores
    File.write('notas_filtradas.data', notas_mayores)
end
#arreglo con salto de linea
data = open("notas.data").readlines
notas_mas_alta(data)