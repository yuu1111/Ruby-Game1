#! ruby -E utf-8
require 'dxruby'

$GAME_PATH = File.dirname(__FILE__)
$debug = 1


require File.expand_path( "#{$GAME_PATH}/Script/Setting.rb")
require File.expand_path( "#{$GAME_PATH}/Script/NPC.rb")
require File.expand_path( "#{$GAME_PATH}/Script/Debug.rb")


FILENAME = 'Settings.txt'
Setting.instance.load(FILENAME)

Debug.log

Window.loadIcon("#{$GAME_PATH}/Image/test.ico")
Window.resize(Setting.instance.width, Setting.instance.height)

player = Npc.new
player.name = "player"

Window.loop do
  Window.draw_scale( 0, 0, Image.load("#{$GAME_PATH}/Image/BackGround.png"), Setting.instance.width, Setting.instance.height)
  Window.draw(100, 100, player.image)  # data.pngを描画する

end
