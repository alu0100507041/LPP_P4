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
a=to_m(a)
puts "Matriz A"
puts a
b=to_m(b)
puts "Matriz B"
puts b
puts "Suma"
puts (suma(a,b))
puts "Multiplicacion"
puts (multiplicacion(a,b))

