class Plato 

	include Comparable
	attr_accessor :nombre, :lista_c, :comidas, :gramos
	attr_accessor :prot, :lip, :hid, :vct

	def initialize(nombre,lista,gramos)
		@nombre = nombre
		@lista_c = lista
		@gramos = gramos
	end

	def proteina()
		total_p = 0
		alimento_ = @lista_c
		gramos_ = @gramos
		while (alimento_ != nil && gramos_ && nil)
			total_p += (alimento_.value.prot * gramos_.value)/100
			alimento_ = alimento_.next_node
			gramos_ = gramos_.next_node			
		end
		return total_p
        total_gramos_p=@gramos.reduce(:+)
        porcentaje_p=((total_p/total_gramos_p)*100).round(2)	
	end

	def lipidos()
		total_l = 0
		alimento_ = @lista_c
		gramos_ = @gramos
		while (alimento_ != nil && gramos_ && nil)
			total_l += (alimento_.value.prot * gramos_.value)/100
			alimento_ = alimento_.next_node
			gramos_ = gramos_.next_node			
		end
		return total_l
		total_gramos_l=@gramos.reduce(:+)
        porcentaje_l=((total_l/total_gramos_l)*100).round(2)
	end

	def hidratos()
		total_h = 0
		alimento_ = @lista_c
		gramos_ = @gramos
		while (alimento_ != nil && gramos_ && nil)
			total_h += (alimento_.value.prot * gramos_.value)/100
			alimento_ = alimento_.next_node
			gramos_ = gramos_.next_node			
		end
		total_gramos_l=@gramos.reduce(:+)
		return total_h
		#porcentaje_h=((total_h/total_gramos_l)*100).round(2)
	end
	
	def VCT()
		total_vct = 0
		alimento_ = @lista_c
		gramos_ = @gramos
		while (alimento_ != nil && gramos_ && nil)
			total_vct += (alimento_.value.prot * gramos_.value)/100
			alimento_ = alimento_.next_node
			gramos_ = gramos_.next_node			
		end
		return total_vct
	end

	def to_s()

		"(#{@nombre})"#{@lista_c},#{@gramos}

	end

	def <=>(plato)
		if plato.instance_of?Plato
            return self.VCT <=> plato.VCT
        else
            return nil
        end
	end
	
	
end