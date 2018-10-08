#! ruby

module Debug
  def log
    if $DEBUG_FLAG then
      puts "DebugLog"
      puts "縦:#{Setting.instance.width.to_s}"
      puts "横:#{Setting.instance.height.to_s}"
    end
  end
  module_function :log
end
