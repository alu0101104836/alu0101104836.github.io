RSpec.describe Plato do
    
    before (:all) do

      @alimento1 = Alimentos.new("Carne de Vaca",21.1,0.0,3.1,50.0,164.0)
      @alimento2 = Alimentos.new("Huevos",13.0,1.1,11.0,4.2,5.7)

      @lista_1 = Lista.new()
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
        @lista_1.insert_head(@alimento1)
        @lista_1.insert_head(@alimento2)

        expect(@lista_1.select{|i| i.to_s }).to be
      end

      it "Max" do
        @lista_1.insert_head(@alimento1)
        @lista_1.insert_head(@alimento2)

        #expect(@lista_1.max).to eq(@alimento1)  
        
      end

      it "Min" do
        @lista_1.insert_head(@alimento1)
        @lista_1.insert_head(@alimento2)

        #expect(@lista_1.min).to eq(@alimento2)
      end

      it "Sort" do
        @lista_1.insert_head(@alimento1)
        @lista_1.insert_head(@alimento2)

        #expect(@lista_1.sort).to eq([@alimento2,@alimento1])
      end      
    end

end