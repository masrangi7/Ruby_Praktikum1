#def geo_reihe(x,n)
#  raise ArgumentError, "Ungültige Parameter" if x < 0 || n < 0
#  raise ArgumentError, "Ungültige Parameter, falsche parameter typ" unless x.is_a?(Numeric)&& n.is_a?(Integer)
#  if x == 0
#    return 1/(1-x)   #return 1
#  end
#
#  if n == 0       #abbruch bedingung
#    return 1
#  end
#
#  return geo_reihe(x,n-1)+x**n
#
#end
#
##puts geo_reihe(-1,2)
#puts geo_reihe(1,2.2)

def reverse_rek(ary)
  raise ArgumentError, "Ungültige Parameter" unless ary.is_a?(Array)                #recursive is a method that is being called in itself

  if ary.size == 1                         #terminierungsbedingung
    return ary
  end
#  if ary.length > 0
#    rev=[]
#    rev << ary.pop until ary.empty?     
#    #rev<< ary.reverse
#   rev
#  end
  if ary.size >0
   # return  reverse_rek(ary.drop(1)) + ary.first(1) 
    return reverse_rek(ary.pop(ary.size-1))+ary.first(1)
  end
  
end

#ary=[2,3,4,5,6,7,8,9,10]
ary = [1,[1,22,[5,7,0],8],2,3]
puts "#{ary}"
puts "#{reverse_rek(ary)} \n"
