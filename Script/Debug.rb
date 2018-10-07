#! ruby -E utf-8
# coding: shift_jis
module Debug
  def log
    if $debug == 1 then
    puts "DebugLog"
    puts "縦:"+$Width
    puts "横:"+$Height
  end
end
  module_function :log
end
