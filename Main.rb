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
  Yoko = f.gets  # 1�s��
  Tate = f.gets  # 2�s��
}

def kari1
  puts Yoko
  puts Tate
end

kari1
#������
Window.resize(Yoko.to_i, Tate.to_i)

Window.loop do

  if Input.key_push?(K_ESCAPE) then  # Esc�L�[����
    break #�I��
  end

end
