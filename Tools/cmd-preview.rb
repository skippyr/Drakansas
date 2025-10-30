def write_short_palette
  for ansi in 0..15 do
    print "\x1b[48;5;#{ansi}m   "
    if ansi == 7 or ansi == 15
      puts "\x1b[0m"
    end
  end
end

def write_long_palette
  colors = ['Black', 'Red', 'Green', 'Yellow', 'Blue', 'Magenta', 'Cyan', 'White']
  text = 'Here Be Dragons!'
  puts '         Dark                    Light'
  colors.each_with_index do |color, ansi|
    puts "#{color.ljust 7}  #{ansi} \x1b[48;5;#{ansi}m   \x1b[0;38;5;#{ansi}m #{text}\x1b[0m  #{(ansi + 8).to_s.ljust 2}  \x1b[48;5;#{ansi + 8}m   \x1b[0;38;5;#{ansi + 8}m #{text}\x1b[0m"
  end
end

write_short_palette
puts
write_long_palette
