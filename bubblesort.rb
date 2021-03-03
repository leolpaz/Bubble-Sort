def bubble_sort(arr)
  i = 0
  ischanged = false
  while i < arr.length-1
    if arr[i] > arr[i+1]
      arr[i], arr[i+1] = arr[i+1], arr[i]
      ischanged = true
      i+=1
    else
      i+=1
    end
    if i == arr.length-1 and ischanged == true
      i = 0
      ischanged = false
    end
  end
  print arr
end

a = [1,6,2,3,7,9,0,10,44,65,93,41,50,1000,12,11,4]
bubble_sort(a)

def bubble_sort_by(arr)
  i = 0
  ischanged = false
  while i < arr.length-1
    if yield(arr[i], arr[i+1]) > 0
      arr[i], arr[i+1] = arr[i+1], arr[i]
      ischanged = true
      i+=1
    else
      i+=1
    end
    if i == arr.length-1 and ischanged == true
      i = 0
      ischanged = false
    end
  end
  print arr
end

bubble_sort_by(["hi","hello","hey", "heeeey", "hiii", "hellooooooo", "hiii"]) do |left,right|
 left.length - right.length
end

  

