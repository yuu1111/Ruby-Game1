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
  Width = f.gets  # 1�s��
  Height = f.gets  # 2�s��
}

def kari1
  puts Width
  puts Height
end

kari1

#Settings.txt�ɏ����Ă��鐔�l�ɉ𑜓x��ݒ肷��
Window.resize(Width.to_i, Height.to_i)

Window.loop do

  if Input.key_push?(K_ESCAPE) then  # Esc�L�[����
    break #�I��
  end

end
