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
  Width = f.gets  # 1行目
  Height = f.gets  # 2行目
}

def kari1
  puts Width
  puts Height
end

kari1

#Settings.txtに書いてある数値に解像度を設定する
Window.resize(Width.to_i, Height.to_i)

Window.loop do

  if Input.key_push?(K_ESCAPE) then  # Escキー判定
    break #終了
  end

end
