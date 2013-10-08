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
