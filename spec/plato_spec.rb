RSpec.describe Plato do
    
    before (:all) do

      @alimento1 = Alimentos.new("Carne de Vaca",21.1,0.0,3.1,50.0,164.0)
      @alimento2 = Alimentos.new("Huevos",13.0,1.1,11.0,4.2,5.7)

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
      
    end
    
    

end