# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)

    # O(nlogn)
    sorted_nums = nums.sort

    head = 0
    tail = sorted_nums.count - 1

    is_answer_found = false
    first_answer_num = 0
    second_answer_num = 0
    # targetから末尾の値を引いた結果の値を探すために2分探索する。見つからなければ永遠にtail-=1。O(nlogn)
    loop do

        pair_num = target - sorted_nums[tail]

        temp_head = head
        temp_tail = tail
        loop do

            center = (temp_head + temp_tail) / 2
            if sorted_nums[center] == pair_num
                first_answer_num = sorted_nums[center]
                second_answer_num = sorted_nums[tail]
                is_answer_found = true
                break
            elsif sorted_nums[center] < pair_num
                temp_head = center + 1
            else
                temp_tail = center - 1
            end

            if temp_head > temp_tail
                break
            end
        end

        if is_answer_found
            break
        end

        tail -= 1
    end

    first_answer_index_num = 0
    second_answer_index_num = 0

    # O(n)
    n = 0
    for num in nums do
        if num == first_answer_num
            first_answer_index_num = n
            break
        end
        n += 1
    end

    isSameNumber = first_answer_num == second_answer_num

    isSkipped = false

    # O(n)
    n = 0
    for num in nums do
        if num == second_answer_num
            if (isSameNumber)
                if (isSkipped)
                    second_answer_index_num = n
                    break
                else
                    isSkipped = true
                end
            else
                second_answer_index_num = n
                break
            end
        end
        n += 1
    end

    return [first_answer_index_num,second_answer_index_num]
end
