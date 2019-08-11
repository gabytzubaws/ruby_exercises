def caesar_cipher (str,shift)
  output = ""
  str.each_byte do |charCode|
    convertedCharCode = charCode + shift
    if charCode.between?(97,122)
      until convertedCharCode.between?(97,122)
        convertedCharCode -= 26
      end
      output += convertedCharCode.chr
    elsif charCode.between?(65,90)
      until convertedCharCode.between?(65,90)
        convertedCharCode -= 26
      end
      output += convertedCharCode.chr
    else
      output += charCode.chr
    end
  end
  puts output
end

caesar_cipher "What a string!",5
