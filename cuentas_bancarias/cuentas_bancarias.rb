class Usuario
    attr_accessor :cuentas
    def initialize(nombre, cuentas)
        @nombre = nombre
        @cuentas = cuentas
    end

    def saldo_total
        array_cuenta=[]
        self.cuentas.each do |i|
            array_cuenta.push(i)
        end
        saldo_completo=0
        array_cuenta.each do|i|
            saldo_completo += i.saldo
        end
        return saldo_completo
    end

end

class CuentaBancaria
    attr_accessor :saldo
    def initialize(banco, cuenta, saldo = 0) 
      @banco = banco
      @cuenta = cuenta
      @saldo = saldo
    end

    def transferir(monto, cuenta_salida, cuenta_destino) 
     saldo = self.saldo - monto
     cuenta_destino.saldo = cuenta_destino.saldo + monto
     cuenta_salida.saldo = cuenta_salida.saldo - monto
    end
end

c1 = CuentaBancaria.new('bci', '1234567', 5000)
c2 = CuentaBancaria.new('Estado', '8910111', 5000)
c3 = CuentaBancaria.new('scotiabank', '8910111', 25000)
usuario1 = Usuario.new("nadeshka", [c1, c2, c3])

c1.transferir(5000, c1, c2)

puts usuario1.saldo_total