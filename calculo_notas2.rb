
def notas_mas_alta(array)
    #convertimos el archivo en un arreglo
    fil = array.map{|x| x.split(',')}
    #ancho 
    width = 2
    #alto
    height= fil.size
    #inicializamos un arreglo multi largo x ancho
    alumno_mayor=Array.new(height){Array.new(width)}
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
        #ingresamos los nombres en la primera col
        alumno_mayor[i][0] = fil[i][0]
        #ingresamos la nota mayor en la 2da col 
        alumno_mayor[i][1] = mayor
        #reiniciamos el valor
        mayor=0
    end
    alumno_mayor
    #guardar los datos de alumno_mayor
    File.write('procesos_filtrados.data', alumno_mayor)
end
#arreglo con salto de linea
data = open("notas.data").readlines

print notas_mas_alta(data)