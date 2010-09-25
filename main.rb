#!/usr/bin/env ruby
Dir.glob(File.dirname(__FILE__)+'/lib/*.rb').each{|lib|
  require lib
}

$VERBOSE = nil

MAX = 2.5

q = QuickTime.new

speed = 1.0
loop do
  begin
    q.speed = speed
  rescue => e
    STDERR.puts e
  end
  speed += 0.01 if speed < MAX
  puts "speed : #{speed}"
  sleep 10
end


