#! ruby -E utf-8
require 'dxruby'

$GAME_PATH = File.dirname(__FILE__)
$debug = 1
$Releas_Day = "alpha"

require File.expand_path( "#{$GAME_PATH}/Script/Setting.rb")
require File.expand_path( "#{$GAME_PATH}/Script/NPC.rb")
require File.expand_path( "#{$GAME_PATH}/Script/GUI.rb")
require File.expand_path( "#{$GAME_PATH}/Script/Debug.rb")

font = Font.new(32)       # フォント生成

FILENAME = 'Settings.txt'
Setting.instance.load(FILENAME)

Debug.log

Window.caption = "Test #{$Releas_Day}" # ウィンドウのキャプション設定
Window.loadIcon("#{$GAME_PATH}/Image/test.ico")
Window.resize(Setting.instance.width, Setting.instance.height)

player = Npc.new
player.name = "player"

Window.loop do
  GUI.new.Draw1(player.image)
  Window.draw_scale( 0, 0, Image.load("#{$GAME_PATH}/Image/BackGround.png"), Setting.instance.width, Setting.instance.height)
end
