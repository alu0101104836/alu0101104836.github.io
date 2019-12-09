module C1
	def <=>(other)
		return nil unless other.instance_of?@valor_c

		@tipo_alimento <=> other.tipo_alimento

	end
end

class Alimentos

  include Comparable
  attr_accessor :tipo_alimento
  attr_accessor :gases, :terreno, :etiqueta
  attr_accessor :valor_c, :lip, :prot, :carbo

  def initialize(tipo_alimento, prot, carbo, lip, gases, terreno )
    @tipo_alimento, @prot, @carbo, @lip, @gases, @terreno = tipo_alimento, prot, carbo, lip, gases, terreno
  end
  
  def carac()
    @valor_c = ((@prot * 4) + (@carbo * 4) + (@lip * 9))
    return @valor_c
  end

  def to_s()
    "(#{@tipo_alimento},#{@prot},#{@carbo},#{@lip},#{@gases},#{@terreno})"
  end
  
  def impacto_c(standard_cal)
    if standard_cal < @valor_c
      return "Alto"
    elsif standard_cal > @valor_c
      return "Bajo"
    else
      return "Igual"
    end
  end

  def impacto_g(standard_g)
    if standard_g < @prot
      return "Alto"
    elsif standard_g > @prot
      return "Bajo"
    else
      return "Igual"
    end
  end

  def to_gases()
    return @gases
  end

end