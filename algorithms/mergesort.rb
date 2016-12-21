def mergesort(array)
    if array.count <= 1
        return array
    end

    mid = array.count / 2
    first_half = mergesort(array.slice(0, mid))
    second_half = mergesort(array.slice(mid, array.count - mid))

    array = []
    offset_a = 0
    offset_b = 0
    while offset_a < first_half.count && offset_b < second_half.count
        a = first_half[offset_a]
        b = second_half[offset_b]

        if a <= b
            array << a
            offset_a += 1
        else
            array << b
            offset_b += 1
        end
    end

    while offset_a < first_half.count
        array << first_half[offset_a]
        offset_a += 1
    end

    while offset_b < second_half.count
        array << second_half[offset_b]
        offset_b += 1
    end

    return array
end

# EXPLANATION
array = []

mergesort([6,7,3,9,2,7,8])
  # count = 7

part_a = mergesort([6,7,3])  #3
  part_a = mergesort([6])
  part_b = mergesort([7,3])
    part_a = mergesort([7])
    part_b = mergesort([3])


part_b = mergesort([9,2,7,8]) #4
  part_a = mergesort([9,2])
    part_a = mergesort([9])
    part_b = mergesort([2])

  part_b = mergesort([7,8])
    part_a = mergesort([7])
    part_b = mergesort([8])
