class Cartas 
    attr_accessor :numero, :pinta

    def initialize(numero, pinta)
            @numero = numero
            @pinta = pinta
    end
end

pintas =['C', 'D', 'E', 'T']
array=[]
for i in 0..4
   carta = Cartas.new(Random.rand(1..13), pintas.sample)
   array.push(carta)
end
