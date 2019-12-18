RSpec.describe Plato do
    
    before (:all) do

      @alimento1 = Alimentos.new("Carne de Vaca",21.1,0.0,3.1,50.0,164.0)
      @alimento2 = Alimentos.new("Huevos",13.0,1.1,11.0,4.2,5.7)

      @lista_1 = Lista.new()

      @plato = Plato.new("Carne","Baia","Baia")
    end

    context "Comparar alimentos" do
      it "Nutricional y ambiental" do
        expect(@alimento1.prot < @alimento2.prot).to eq(false)
        expect(@alimento1.carbo > @alimento2.carbo).to eq(false)
        expect(@alimento1.lip == @alimento2.lip).to eq(false)
        expect(@alimento1.gases <= @alimento2.gases).to eq(false)
        expect(@alimento1.terreno >= @alimento2.terreno).to eq(true)          
      end
    end

    context "Listas" do
      it "Collect" do
        @lista_1.insert_head(@alimento1)
        @lista_1.insert_head(@alimento2)
        expect(@lista_1.collect{|i| i.to_s}).to eq(["(Huevos,13.0,1.1,11.0,4.2,5.7)", "(Carne de Vaca,21.1,0.0,3.1,50.0,164.0)"])        
      end

      it "Select" do
        expect(@lista_1.select{|i| i.to_s }).to eq([@alimento2,@alimento1])
      end

      it "Max" do
        #expect(@lista_1.max).to eq(@alimento2)  
      end
 
      it "Min" do

        #expect(@lista_1.min).to eq(@alimento2)
      end

      it "Sort" do

        expect(@lista_1.sort {|a,b| a.to_s <=> b.to_s}).to eq([@alimento1,@alimento2])
      end      
    end
end

RSpec.describe Plato do
  
  before :each do

    @alimento1 = Alimentos.new("Carne de Vaca",21.1,0.0,3.1,50.0,164.0)
    @alimento2 = Alimentos.new("Huevos",13.0,1.1,11.0,4.2,5.7)

    @plato_2 = Lista.new()
    @plato_2.insert_head([@alimento1,@alimento1])
    @plato_3 = Lista.new()
    @plato_3.insert_head([100,200])
    @Plato = Plato.new("Prueba",@plato_2,@plato_3)

  end

  context "Plato basico" do
    
    it "Nombre" do
      expect(@Plato.nombre).to eq("Prueba")  
    end

    it "Alimentos" do
      expect(@Plato.lista_c).to eq(@plato_2)  
    end


    it "Gramos" do
      expect(@Plato.gramos).to eq(@plato_3)  
    end

    it "Proteinas" do
      expect(@Plato.proteina).to eq(0)
    end

    it "Lipidos" do
      expect(@Plato.lipidos).to eq(0)  
    end
    
    it "Glucidos" do
      expect(@Plato.hidratos).to eq(0)  
    end

    it "VCT" do
      expect(@Plato.VCT).to eq(0)  
    end

    it "Formateado" do
      expect(@Plato.to_s).to eq("(Prueba)")
    end
    
    
    
    
  end
end

  RSpec.describe Platillo do
    before :each do
				@List = Lista.new
				@a1 = Alimentos.new("Carne_de_vaca",21.1,0.0,3.1,50.0,164.0)
				@a2 = Alimentos.new("Carne_de_cordero",18.0,0.0,17.0,20.0,185.0)
				@a3 = Alimentos.new("Camarones",17.6,1.5,0.6,18.0,2.0)
				@a4 = Alimentos.new("Chocolate",5.3,47.0,30.0,2.3,3.4) 
				@a5 = Alimentos.new("Salmon",19.9,0.0,13.6,6.0,3.7)
				@a6 = Alimentos.new("Cerdo",21.5,0.0,6.3,7.6,11.0)
				@a7 = Alimentos.new("Pollo",20.6,0.0,5.6,5.7,7.1)
				@a8 = Alimentos.new("Queso",25.0,1.3,33.0,11.0,41.0)
				@a9 = Alimentos.new("Cerveza",0.5,3.6,0.0,0.24,0.22)
				@a10 = Alimentos.new("Leche_de_vaca",3.3,4.8,3.2,3.2,8.9)
				@a11 = Alimentos.new("Huevos",13.0,1.1,11.0,4.2,5.7)
				@a12 = Alimentos.new("Cafe",0.1,0.0,0.0,0.4,0.3)
				@a13 = Alimentos.new("Tofu",8.0,1.9,4.8,2.0,2.2)
				@a14 = Alimentos.new("Lentejas",23.5,52.0,1.4,0.4,3.4)
				@a15 = Alimentos.new("Nuez",20.0,21.0,54.0,0.3,7.9)

				@plato_l = Lista.new()
				@plato_l.insert_head([@a14,@a13,@a15,@a9])
				@plato_g = Lista.new()
				@plato_g.insert_head([500,800,500,203])
				@plato = Platillo.new("Nuevo",@plato_l,@plato_g)

				#Dieta Vegetariana
				@p7l=Lista.new()
				@p7l.insert_head([@a9,@a15,@a14])
				@p7g=Lista.new()
				@p7g.insert_head([210,230,400])
				@plato7 = Platillo.new("plato 1", @p7l,@p7g)

				@p8l=Lista.new()
				@p8l.insert_head([@a13,@a12,@a4])
				@p8g=Lista.new()
				@p8g.insert_head([300,200,800])
				@plato8 = Platillo.new("plato 2", @p8l,@p8g)

				@Dieta_Vegetariana = Lista.new()
				@Dieta_Vegetariana.insert_head([@plato7, @plato8])

				#Dieta Carne
				@p9l=Lista.new()
				@p9l.insert_head([@a4,@a14,@a15,@a9])
				@p9g=Lista.new()
				@p9g.insert_head([21,34,56,700])
				@plato9 = Platillo.new("plato 3", @p9l,@p9g)

				@p10l=Lista.new()
				@p10l.insert_head([@a13,@a12,@a4])
				@p10g=Lista.new()
				@p10g.insert_head([230,120,50,300])
				@plato10 = Platillo.new("plato 4", @p10l,@p10g)
      end
      

			context "#Metodo para calcular las expetativas de gases" do
				it "Valor total de la emisiones diarias de de gases de efecto invernadero" do
					expect(@plato.TotalGases).to eq(19.99)
				end
				it "Estimacion de los metros cuadrados de uso de terreno" do
					expect(@plato.TotalTerreno).to eq(74.55)
				end
				it "Se obtiene el plato formateado" do
					expect(@plato.to_s).to eq("Nuevo")
				end
      end
      

			context "#Metodo comparable" do
				it "Comparaciones entre platos de dieta Vegetariana" do
					expect(@plato8>@plato7).to eq(true)
					expect(@plato7<@plato8).to eq(true)
					expect(@plato7==@plato7).to eq(true)
					expect(@plato8>=@plato7).to eq(true)
					expect(@plato7<=@plato8).to eq(true)
			end
    end
    
		context "#Metodo Enumerable" do	
			it "Lista de platos de un menu de una dieta Vegetariana y dieta Carne" do
				@List.insert_head(@plato7)
				@List.insert_head(@plato8)
				@List.insert_head(@plato9)
				@List.insert_head(@plato10)
				expect(@List.collect {|x| x.to_s}).to eq(["plato 4","plato 3","plato 2","plato 1"])
        expect(@List.select {|i| i.to_s}).to eq([@plato7,@plato8,@plato9,@plato10])
				expect(@List.max).to eq(@plato8)
				expect(@List.min).to eq(@plato10)
				expect(@List.sort).to eq([nil,nil,nil,nil])
			end
    end
    
    context "Huella" do
      
      it "Menu" do
        @Dieta_Carne = Lista.new()
        @Dieta_Carne.insert_head([@plato9, @plato10])
        
        @Dieta_Vegetaria = Lista.new()
        @Dieta_Vegetaria.insert_head([@plato9, @plato10])
        
        @Dieta_Vasca = Lista.new()
        @Dieta_Vasca.insert_head([@plato9, @plato10])
        
        @Dieta_LPC = Lista.new()
        @Dieta_LPC.insert_head([@plato9, @plato10])
        
        @Dieta_Vegeliana = Lista.new()
				@Dieta_Vegeliana.insert_head([@plato9, @plato10])
      end

      it "Precio" do
        @Precio_Carne = Lista.new
        @Precio_Carne.insert_head([10.50,25.26])

        @Precio_Vegetaria = Lista.new
        @Precio_Vegetaria.insert_head([10.50,25.26])

        @Precio_Vasca = Lista.new
        @Precio_Vasca.insert_head([10.50,25.26])

        @Precio_LPC = Lista.new
        @Precio_LPC.insert_head([10.50,25.26])

        @Precio_Vegelia = Lista.new
        @Precio_Vegelia.insert_head([10.50,25.26])
      end
    end
    
    
  end