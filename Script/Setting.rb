#! ruby -E utf-8
# In Setting.rb
require 'singleton'

class Setting
  include Singleton

  attr_reader :width, :height
  #�t�@�C������n���Ƃ��̃t�@�C����ݒ�t�@�C���Ƃ��ēǂݍ���ł��������t�@�C�����Ȃ��ꍇ�쐬����
  def load(filename)
    if File.exist?(filename)
      File.open(filename) do |f|
        @width = f.gets.delete("^0-9").to_i
        @height = f.gets.delete("^0-9").to_i
      end
    else #�ݒ�t�@�C�����ǂݍ��߂Ȃ������Ƃ��̓f�t�H���g�̐ݒ��ǂݍ���
      @width = 800
      @height = 600
      open(filename, 'w'){|f|
        f.puts "width=#{@width}"
        f.puts "height=#{@height}"
      }
    end
  end
end
