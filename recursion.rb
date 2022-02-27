#with iteration
def fibs(num)
  arr = [0, 1]
  i = 0
  until arr.length == num
    fib = arr[i] + arr[i + 1]
    arr.push(fib)
    i += 1
  end
  arr
end

# puts fibs(8)

def fibs_rec(num)
  arr = []
  if num < 2
    return num
  else 
    return (fibs_rec(num -1) + fibs_rec(num - 2))
  end
 
end

# puts fibs_rec(8)

def merge_sort(arr)
return arr if arr.length <= 1
 arr_length = arr.length

 half_arr = (arr_length/2).round
 left = arr.take(half_arr)
 right = arr.drop(half_arr)

 sorted_left = merge_sort(left)
 sorted_right = merge_sort(right)

 merge(sorted_left, sorted_right)
end

def merge(left, right)
  return left if right.empty?
  return right if left.empty?

  if left.first <= right.first
    smallest = left.shift
  else 
    smallest = right.shift
  end

  recursion = merge(left, right)
  [smallest].concat(recursion)
end

puts merge_sort([135, 12, 65, 213, 43, 354])
