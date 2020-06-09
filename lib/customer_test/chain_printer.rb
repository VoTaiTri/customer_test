module CustomerTest
  class ChainPrinter
    def self.perform max_number
      max_number = max_number.to_i
      if max_number == 0
        system "echo", "-e", "\e[92mPlease fill integer that greater than 1"
        return
      end

      str = ""
      (1..max_number).each do |n|
        if n % 15 == 0
          str << "FizzBuzz "
        elsif n % 5 == 0
          str << "Buzz "
        elsif n % 3 == 0
          str << "Fizz "
        else
          str << "#{n} "
        end
      end
      str.split.join(", ")
    end
  end
end
