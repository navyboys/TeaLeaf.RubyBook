a = ['white snow', 'winter wonderland', 'melting ice',
       'slippery sidewalk', 'salted roads', 'white trees']
p a

a = a.map { |pairs| pairs.split }
p a

a = a.flatten
p a