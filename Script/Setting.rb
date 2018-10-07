#! ruby -E utf-8
# In Setting.rb
require 'singleton'

class Setting
  include Singleton

  attr_reader :width, :height
  #ファイル名を渡すとそのファイルを設定ファイルとして読み込んでくれる
  def load(filename)
    if File.exist?(filename)
      File.open(filename) do |f|
        @width = f.gets.to_i
        @height = f.gets.to_i
      end
    else #設定ファイルが読み込めなかったときはデフォルトの設定を読み込む
      @width = 800
      @height = 600
    end
  end
end
