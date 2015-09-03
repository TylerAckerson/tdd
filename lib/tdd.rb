class Array
  def my_uniq
    new_array = []

    self.each { |element| new_array << element unless new_array.include?(element) }

    new_array
  end

  def two_sum
    matches = []

    self.each_with_index do |el, el_idx|
      ((el_idx+1)...length).each do |other_idx|
        if (el + self[other_idx]).zero?
        matches << [el_idx, other_idx]
        end
      end
    end
    matches

  end

  def my_transpose
    transposed = Array.new(self[0].length) {Array.new}
    self.each_with_index do |row, idx1|
      row.each_with_index do |el, idx2|
        transposed[idx2] << el
      end
    end

    transposed
  end

  def stock_picker
    best_value = 0
    best_days = nil

    self.each_with_index do |value, val_idx|
      ((val_idx + 1)...length).each do |idx2|
        temp_value = self[idx2] - value
        if temp_value > best_value
          best_days = [val_idx, idx2]
          best_value = temp_value
        end
      end
    end

    best_days
  end

end
