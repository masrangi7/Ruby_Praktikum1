require 'Set'
include Enumerable 
def deep_collect_keys(a_hash)

  raise ArgumentError, "Ungültige parameter" unless a_hash.is_a?(Hash)

  ergebniss = Set.new
    a_hash.each { |k,v|
   ergebniss<< k
    ergebniss.merge(deep_collect_keys(k)) if k.is_a? Hash
    ergebniss.merge(deep_collect_keys(v)) if v.is_a? Hash
    #ergebniss<< k
  }
  ergebniss
end

#def to_s
#
#  return 'Set {}' if size == 0
#
#  set = "Deep_collect_keys(h) = {#{self.map{|x| x }}}"
#
#  # delete square brackets
#  set.delete('[]')
#end


h = {
  {2=>4} => {
    4 => {
      {5 => {
           1 => 3,
           2 => 4  }} => {
                       7 => 8
                          }
                    }
            }
}
puts "h = #{h}"
puts "#{deep_collect_keys(h)}"                # {{2=>4},2,4,{5=>{1=>3, 2=>4}},5,1,7}

#{:foo => {:bar => {:baz => 'a',:bez => 'b',:biz => 'c'}}}

