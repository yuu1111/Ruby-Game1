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
  Width = f.gets  #1行目
  Height = f.gets #2行目
}

def kari1
  puts Width
  puts Height
end

kari1

#Settings.に書いてある数値を使って解像度を決める
Window.resize(Width.to_i, Height.to_i)

Window.loop do

  if Input.key_push?(K_ESCAPE) then  #ESCキー判定
    break #ウィンドウを閉じて終了させる
  end

end
