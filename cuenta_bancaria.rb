class CuentaBancaria
    attr_accessor :nombre_de_usuario, :numero_de_cuenta, :vip

    def initialize(nombre_de_usuario, numero_de_cuenta, vip = 0)
        
        @nombre_de_usuario = nombre_de_usuario
        @numero_de_cuenta = numero_de_cuenta
        raise RangeError, "el numero de cuenta debe contenir 8 digitos" if numero_de_cuenta.digits.count != 8

        @vip = vip
        raise RangeError, "para cuentas vip, ingrese 1" if vip != 0 && vip != 1

    end

    def num_vip(numero_de_cuenta)
        "#{vip}-#{numero_de_cuenta}"
    end
end

c = CuentaBancaria.new('alexis',96857432,1)
print c.nombre_de_usuario, "\t", c.num_vip(c.numero_de_cuenta),"\n"