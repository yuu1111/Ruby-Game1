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

GUI_Base = Image.load("#{$GAME_PATH}/Image/GUI_Base.png")

Window.loop do

  GUI.new.Draw1(100,100,GUI_Base)
  GUI.new.DrawScale(0,0,Setting.instance.width, Setting.instance.height,Image.load("#{$GAME_PATH}/Image/BackGround.png"))
end
