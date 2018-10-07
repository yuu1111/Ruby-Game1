#! ruby -E utf-8
# In Setting.rb
require 'singleton'

class Setting
  include Singleton

  attr_reader :width, :height
  #ファイル名を渡すとそのファイルを設定ファイルとして読み込んでくれるもしファイルがない場合作成する
  def load(filename)
    if File.exist?(filename)
      File.open(filename) do |f|
        @width = f.gets.delete("^0-9").to_i
        @height = f.gets.delete("^0-9").to_i
      end
    else #設定ファイルが読み込めなかったときはデフォルトの設定を読み込む
      @width = 800
      @height = 600
      open(filename, 'w'){|f|
        f.puts "width=#{@width}"
        f.puts "height=#{@height}"
      }
    end
  end
end
