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

a=to_m(a)
puts a
b=to_m(b)

n =a.length
c= Array.new(n, 0) { Array.new(n, 0) } 
for i in 0...n do
	
	for j in 0...n do
		c[i][j] += a[i][j]+b[i][j]
	end
end
puts c
