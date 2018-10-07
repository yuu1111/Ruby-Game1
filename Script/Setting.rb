#! ruby -E utf-8
module FileManager
  def initialize
    if File.exist?("Settings.txt") then
    else
      open("Settings.txt", 'w'){|f|
        f.puts '800'
        f.puts '600'
      }
    end
  end

  def setteing_file_load
    if File.exist?("Settings.txt") then
      File.open("Settings.txt"){|f|
        $Width = f.gets  #1行目
        $Height = f.gets #2行目
      }
    end
  end
  module_function :setteing_file_load
end
