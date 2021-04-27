require_relative 'cartas.rb'

class Baraja
  attr_reader :cartas
  def initialize
    @cartas = []
    pintas=['C','D','E','T']
    pintas.each do |pinta|
      13.times do |numero|
        num = numero + 1
        @cartas.push(Cartas.new(num,pinta))
      end
    end
  end

  def barajar
     @cartas = @cartas.shuffle
  end

  def sacar
    carta=[]
    carta.push(@cartas.pop)
  end

  def repartir_mano
    mano = []
    5.times do |i|
      mano.push(sacar)
    end
    return mano
  end
end

juego = Baraja.new

puts juego.barajar
print "quemo carta #{juego.sacar}\n"
print "Repartiendo mano #{juego.repartir_mano}"