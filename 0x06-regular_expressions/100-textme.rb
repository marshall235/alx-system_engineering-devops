#!/usr/bin/env ruby
# A script that run some statistics on the TextMe app text messages transactions.

puts ARGV[0].scan(/\[from:(.*?)\]\s\[to:(.*?)\]\s\[flags:(.*?)\]/).join(',')
