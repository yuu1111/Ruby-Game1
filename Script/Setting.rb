#! ruby -E utf-8
# In Setting.rb
require 'singleton'

class Setting
  include Singleton

  attr_reader :width, :height
  #�t�@�C������n���Ƃ��̃t�@�C����ݒ�t�@�C���Ƃ��ēǂݍ���ł����
  def load(filename)
    if File.exist?(filename)
      File.open(filename) do |f|
        @width = f.gets.to_i
        @height = f.gets.to_i
      end
    else #�ݒ�t�@�C�����ǂݍ��߂Ȃ������Ƃ��̓f�t�H���g�̐ݒ��ǂݍ���
      @width = 800
      @height = 600
    end
  end
end
