#! ruby -E utf-8
# coding: shift_jis
module Debug
  def log
    if $debug == 1 then
    puts "DebugLog"
    puts "�c:"+Setting.instance.width.to_s
    puts "��:"+Setting.instance.height.to_s
  end
end
  module_function :log
end
