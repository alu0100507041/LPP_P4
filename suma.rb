f= File.open('datos.dat')
d= f.read
a,b=d.split(/\n\n/)

def to_m(a)
  a = a.split(/\n/)
  a = a.map { |r| r.split(/\s+/) }
  a = mapmap(a) { |x| x.to_f } ##Cambiamos a flotante 
end

def mapmap(a)
  a.map { |r|
    r.map { |e|
      yield e
    }
  }
end
<<<<<<< .merge_file_sLWKvY
def suma (a,b)
	n =a.length
	c= Array.new(n, 0) { Array.new(n, 0) } #creamos una variable matriz
	for i in 0...n do
	
		for j in 0...n do
			c[i][j] += a[i][j]+b[i][j]
		end
	end
	c
end

puts(suma(a,b))
=======

a=to_m(a)
puts a
b=to_m(b)
puts ""
puts b

def multiplicacion(a,b)
  m = a.length
  d = Array.new(m, 0) {Array.new(m, 0)}
  for i in 0...m do
    for j in 0...m do
      for k in 0...m do
        d[i][j] += a[i][k] * b[k][j]
      end
    end
  end
 d
end

puts (multiplicacion(a,b))
>>>>>>> .merge_file_j0B9rS
