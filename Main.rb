#! ruby -E utf-8
# coding: shift_jis
require 'dxruby'

require"./Setting.rb"
require"./NPC.rb"
require"./Debug.rb"

$debug = 1

$Width = 100
$Height = 200

FileManager.setting_file_load


Debug.log

#Settings.に書いてある数値を使って解像度を決める
Window.resize($Width.to_i, $Height.to_i)

Window.loop do

  if Input.key_push?(K_ESCAPE) then  #ESCキー判定
    break #ウィンドウを閉じて終了させる
  end

end
