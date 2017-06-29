require 'Set'

include Enumerable

def deep_collect_keys(a_hash)

  raise ArgumentError, "Ungültige parameter" unless a_hash.is_a?(Hash)

  ergebniss = Set.new
  a_hash.each { |k,v|
    ergebniss<< k
    ergebniss.merge(deep_collect_keys(k)) if k.is_a? Hash
    ergebniss.merge(deep_collect_keys(v)) if v.is_a? Hash
  }
  ergebniss
end

def to_s

  return 'Set {}' if size == 0
#  arry=[]
#  self.each{|x| arry.push(x) }
#  return "{#{arry.to_s.delete('[]')}}"
  
  return "#{self.map{|x|x}}"
  delete'[]'
  

end

def deep_to_a(a_hash)
  raise ArgumentError, "Üngültige parameter" unless a_hash.is_a?(Hash) or a_hash.is_a?(Numeric)
  return a_hash unless a_hash.is_a?(Hash)

  a_hash.map{|k,v|
    [deep_to_a(k),deep_to_a(v)]
  }
end

def deep_ary_plus_depth(ary,depth=0)
  raise ArgumentError, "Üngültige parameter " unless ary.is_a?(Array)
  ergebniss = []
  ergebniss<<depth<<ary if depth == 0     #abbruch bedingung

  ary.each{|element|
    if element.is_a?(Array)
      depth +=1
      ergebniss<<depth<<element
      ergebniss += deep_ary_plus_depth(elem,depth)
      depth -= 1
    end
  }
  ergebniss

end

def deep_to_string(ary)
  return ary.to_s unless ary.is_a?(Array)

  return '['+ ary.map{|elem| deep_to_string(elem)}.join(',')+ ']'

end

h = {
  {2=>4} => {
  4 => {
  {5 => {
  1 => 3,
  2 => 4  }} => {
  7 => 8}}}}
puts "h = #{h}"
puts "#{deep_collect_keys(h)}"
