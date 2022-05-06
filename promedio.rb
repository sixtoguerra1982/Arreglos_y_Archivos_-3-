=begin
Crear el programa `visitas.rb` que dada la información de visitas diarias a un sitio web pueda
entregar cierta información.

Crear un método llamado promedio que devuelva la cantidad promedio de visitas en
el arreglo.


=end

def promedio_last(array)
    suma = 0
    array.each do |num|
        suma += num
    end
    (suma.to_f / array.count).truncate(2)
end

def promedio(array)
    (array.sum / array.count.to_f).truncate(2)
end

puts promedio([1000,800,250,300,500,2500])