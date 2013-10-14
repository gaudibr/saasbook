def sum a
  a.empty? ? 0 : a.reduce(:+)
end
def max_2_sum a
  return 0 if a.empty?
  return a.first if a.count==1
  a.combination(2).map {|e| e.reduce(0,:+)}.max
end
def sum_to_n? a,n
  return (0 == n) if a.empty?
  a.combination(2).map {|e| e.reduce(0,:+)}.include? n
end