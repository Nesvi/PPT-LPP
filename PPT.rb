# -*- coding: utf-8 -*-
class PPTGame

  def initialize

    @result = Array.new
    @result = {
      'Piedra' => 'Papel',
      'Papel'  => 'Tijera',
      'Tijera' => 'Piedra'
    }

    @humanWins = 0
    @computerWins = 0
    
    @humanSelect = ""
    @computerSelect = ""

  end

  def NewRound
    
    HumanTurnV rand(3)
    ComputerTurn()
    Eval()    
    ShowResults()
    
  end

  def NewRoundV h,c

    HumanTurnV h
    ComputerTurnV c
    return Eval()    
    
  end
  def HumanTurn

    puts "Introduce tu eleccion:"

    instring = gets
    humano = instring[0,instring.length-1]
    humano.to_sym
    
    while humano != 'Piedra' and humano != 'Papel' and humano != 'Tijera' do
      
      puts "Cadena inválida" 
      instring = gets
      humano = instring[0,instring.length-1]
      humano.to_sym
    
    end
    
    @humanSelect = humano
    
  end
  
  def HumanTurnV val

    puts "Introduce tu eleccion:"
    @humanSelect = Number2Value val
    puts @humanSelect

  end
  
  def ComputerTurn
    
    elec = rand(3);
    
    @computerSelect = Number2Value elec

    puts  "Computer selected: "+@computerSelect
  end
  
  def ComputerTurnV v
    
    
    
    @computerSelect = Number2Value v

    puts  "Computer selected: "+@computerSelect
  end

  def Eval
    
    if(@computerSelect != @humanSelect)

      if(@result[@computerSelect] == @humanSelect)
        @humanWins+= 1
        puts "Human Wins"
        return 0 
      else
        @computerWins+=1
        puts "Computer Wins"
        return 1
      end
    end
    
    
  end
  
  def ShowResults
    
    puts "Human: " 
    puts @humanWins
    puts "Computer: " 
    puts @computerWins
  end

  def Number2Value elec

    case
    when elec == 0 then return 'Piedra'
    when elec == 1 then return 'Papel'
    when elec == 2 then return 'Tijera'
    else
    end

  end
end

Game = PPTGame.new

Game.NewRound
