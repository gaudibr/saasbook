def hello(name)
  return "Hello, "+name
end
def starts_with_consonant?(s)
  /\A[bcdfghjklmnpqrstvwxyz]/i===s
end
def binary_multiple_of_4?(s)
  if /^[01]*$/===s
    return s.to_i(2)==0 ? false : (s.to_i(2)%4)==0
  else
    return false
  end
end 