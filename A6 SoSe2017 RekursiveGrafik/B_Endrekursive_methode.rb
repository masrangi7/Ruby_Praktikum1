#def geo_reihe(x,n,akku=0)
#  raise ArgumentError, "Ungültige Parameter" if x < 0 || n < 0
#  raise ArgumentError, "Ungültige Parameter, falsche parameter typ" unless x.is_a?(Numeric)&& n.is_a?(Integer)
#
#  if n == 0
#     return akku+1
#   end
#   
#  return geo_reihe(x,n-1,akku=(x**n)+akku)
#   
#   end
#   
#puts geo_reihe(2,2)
##puts geo_reihe(1,2.2)

def reverse_rek(ary,akku=[])
  raise ArgumentError, "Ungültige Parameter" unless ary.is_a?(Array)                #recursive is a method that is being called in itself

  if ary.size == 0                         #terminierungsbedingung
    return akku
  end

  return reverse_rek(ary[0...-1],akku<<ary[-1])
  

end

ary = [1,[1,22,[5,7,0],8],2,3]
#ary=[]
puts "#{ary}"
puts "#{reverse_rek(ary)} \n"
