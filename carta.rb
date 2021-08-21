class Carta
    attr_accessor :numero, :pinta

    def initialize(numero, pinta)
      @numero = numero
      @pinta = pinta
    end

    pinta = ['C', 'D', 'E', 'T']
    array = []

    for i in 0..4
        array[i] = Carta.new(Random.rand(1..13), pinta.sample)
        print array[i].numero, array[i].pinta, "\n"
    end
end
