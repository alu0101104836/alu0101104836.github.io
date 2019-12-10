class Plato 

	attr_accessor :nombre, :lista_c, :comidas, :gramos
	attr_accessor :prot, :lip, :hid, :vct

	def initialize(nombre)
		@nombre = nombre
	end

	def platos(lista)

		@listas_c = lista

	end

	def gramos(gramos)

		@gramos = gramos

	end

	def proteina(porc)
		@prot = porc
	end

	def lipidos(lip)
		@lip = lip
	end

	def hidratos(hid)
		@hid = hid
	end
	
	def VCT()
		@vct
	end

	def to_s()

		"(#{@nombre},#{@gramos},#{@prot},#{@lip},#{@hid})"

	end

	def to_plato()
		"#{@lista_c}"
	end
	
end