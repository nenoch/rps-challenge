class Computer

  attr_reader :weapons, :weapon

  def initialize
    @weapons = ["rock", "paper", "scissors"]
  end

  def select_weapon
    @weapon = @weapons.sample
  end


end