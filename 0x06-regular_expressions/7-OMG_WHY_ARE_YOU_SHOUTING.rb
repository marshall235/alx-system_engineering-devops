#!/usr/bin/env ruby
#The regular expression matches capital letters only
puts ARGV[0].scan(/[A-Z]/).join
