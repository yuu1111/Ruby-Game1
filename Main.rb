#! ruby -E utf-8
# coding: shift_jis
require 'dxruby'

require"./NPC.rb"
if File.exist?("Settings.txt") then
else
  open("Settings.txt", 'w'){|f|
    f.puts '800'
    f.puts '600'
  }
end


File.open("Settings.txt"){|f|
  Yoko = f.gets  # 1行目
  Tate = f.gets  # 2行目
}

def kari1
  puts Yoko
  puts Tate
end

kari1
#初期化
Window.resize(Yoko.to_i, Tate.to_i)

Window.loop do

  if Input.key_push?(K_ESCAPE) then  # Escキー判定
    break #終了
  end

end
