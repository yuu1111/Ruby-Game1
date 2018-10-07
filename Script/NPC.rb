class Npc
  def name
    @name
  end

  def name=(name)
    @name = name
  end

  def image
    image = Image.load("#{$GAME_PATH}/Image/#{name}.png")
  end
end
