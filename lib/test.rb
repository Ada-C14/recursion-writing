def find_odd(list)
  hash = {}
  list.each do |num|
    if hash[num]
      hash[num] = false
    else
      hash[num] = false
    end
  end

  list.each do |num|
    return num if hash[num]
  end

end
