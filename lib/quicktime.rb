require 'rubygems'
require 'applescript'

class QuickTime

  class Error < Exception
  end

  attr_accessor :speed

  def speed=(speed)
    raise ArgumentError.new('speed should be Number') if speed.class != Fixnum and speed.class != Float
    @speed = speed
    script = 
"tell application 'QuickTime Player'
  set preferred rate of document 1 to #{speed}
  tell movie 1
    play
  end tell
end tell".gsub(/'/,'"')
    AppleScript.execute(script)
  end

  def stop
    script = 
"tell application 'QuickTime Player'
  tell movie 1
    stop
  end tell
end tell".gsub(/'/,'"')
    AppleScript.execute(script)
  end

  def play
    script = 
"tell application 'QuickTime Player'
  tell movie 1
    play
  end tell
end tell".gsub(/'/,'"')
    AppleScript.execute(script)

  end

end
