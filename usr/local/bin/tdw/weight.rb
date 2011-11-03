#!/usr/bin/env ruby
# 1227552224	161.66
calories_per_day = 101.0
t0 = 1227553839
w0 = 161.66

t1 = Time.now.to_i

calories_per_second = calories_per_day / 86400.0
lbs_per_second = calories_per_second / 3500.0

elapsed_seconds = ( t1 - t0 )
cals = elapsed_seconds * calories_per_second
lbs_lost = elapsed_seconds * lbs_per_second

def one_sig ( number )
  orig = number
  log10 =  Math.log10(number)
  d = (log10.to_i)
  #  puts "#{number}: log10 = #{log10}, #{d} digits"
  e = 10 ** d
  number = number.to_f / 10 ** d
  i = ( ( number + 0.5 ).to_i ) * 10 ** d
  #  puts "#{orig} => #{e} #{number} #{i}"
  #   puts log10 ** 2
  #   puts Math.exp(log10)
  return i
end

cals = one_sig(cals)
hours = one_sig(elapsed_seconds/3600.0)
puts "#{cals} calories in #{hours} hours"
puts "lbs_lost #{lbs_lost}"
puts "Weight now: " + (w0 - lbs_lost).to_s
