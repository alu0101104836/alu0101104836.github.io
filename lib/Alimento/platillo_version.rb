require_relative './plato_version.rb'

class Platillo < Plato

    include Comparable
    attr_accessor :nombre, :lista_c, :comidas, :gramos, :total_terreno, :total_gases

    def initialize(nombre,lista,gramos)
        super(nombre,lista,gramos)       
    end
    
    def TotalGases()
        alimentos_ = @lista_c.head
        gramos_ = @gramos.head
        while (alimentos_ != nil && gramos_ != nil )
        @total_gases += (alimentos_.value.gases * gramos_.value)/100
        alimentos_ = alimentos_.next_node
        gramos_ = gramos_.next_node 
        end
        return @total_gases.round(2)
    end

    def TotalTerreno()
        alimentos_ = @lista_c.head
        gramos_ = @gramos.head

        while (alimentos_ != nil && gramos_ != nil )
        @total_terreno += (alimentos_.value.terreno * gramos_.value)/100
        alimentos_ = alimentos_.next_node
        gramos_ = gramos_.next_node 
        end
        return @total_terreno.round(2)
    end

    def ValorAmbientalTotal
        total_valorCT = 0
        head_alimentos=@alimentos.head
        head_gramos=@gramos.head
        while(head_alimentos != nil && head_gramos != nil)
            total_valorAmbientalTotal = ((head_alimentos.value.gases+head_alimentos.value.terreno) * head_gramos.value)/100
            head_alimentos=head_alimentos.next
            head_gramos=head_gramos.next
        end
        return total_valorAmbientalTotal
    end

    def to_s()
        "#{@nombre}"#{@lista_c},#{@gramos_}"
    end    

    def impacto_kcal()
        if standard_cal < @total_gases
            return "Alto"
          elsif standard_cal > @total_gases
            return "Bajo"
          else
            return "Igual"
          end
    end

    def impacto_carbono()
        if standard_g < @prot
            return "Alto"
          elsif standard_g > @prot
            return "Bajo"
          else
            return "Igual"
          end
    end
    
    
    
    def <=>(plato)
        if plato.instance_of?Platillo
            return self.ValorAmbientalTotal <=> plato.ValorAmbientalTotal
        else
            return nil
        end
    end
end