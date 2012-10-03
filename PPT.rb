class PPTGame

  def initialize

    @resultados = Array.new
    @resultados = {
      'Piedra' => 'Papel',
      'Papel'  => 'Tijera',
      'Tijera' => 'Piedra'
    }
    
  end

  def aux

    puts @resultados['Piedra']

  end

  def HumanSelected

    a = puts.chomp

  end

end

Game = PPTGame.new
Game.aux
Game.HumanSelected
