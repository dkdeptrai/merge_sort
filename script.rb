# frozen_string_literal: true

def merge_sort(arr)
  return arr if arr.length == 1

  left = merge_sort(arr[0...(arr.length / 2)])
  right = merge_sort(arr[(arr.length / 2)..(arr.length - 1)])
  merged = []
  left.first < right.first ? merged << left.shift : merged << right.shift until left.empty? || right.empty?
  merged + left + right
end

arr = []
5_000_000.times { arr << rand(50_000_000) }
p (merge_sort(arr))
