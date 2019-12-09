RSpec.describe Alimento do

  before (:all) do
	
	  @alimento_española1 = Alimentos.new("Carne de Vaca",21.1,0.0,3.1,50.0,164.0)
	  @alimento_española2 = Alimentos.new("Huevos",13.0,1.1,11.0,4.2,5.7)
	  @alimento_española3 = Alimentos.new("Leche",3.3,4.8,3.2,3.2,8.9)

    @lista_e = Lista.new()

    @plato = Plato.new("Carne")
  end

  context "Comprobar comidas" do
    it "Características del alimento" do
	    expect(@alimento_española1.to_s).to eq("(Carne de Vaca,21.1,0.0,3.1,50.0,164.0)")
	    expect(@alimento_española2.to_s).to eq("(Huevos,13.0,1.1,11.0,4.2,5.7)")
    end
  end

  context "Valores de comida" do
    it "Calculo de Kcal" do
	    expect((@alimento_española1.carac).round).to eq(112)
	    expect((@alimento_española2.carac).round).to eq(155)
    end
  end

  context "Impacto ambiental" do
    it " hombre" do
	    expect(@alimento_española1.impacto_c(3000)).to eq("Bajo")
	    expect(@alimento_española2.impacto_g(54)).to eq("Bajo")

	    expect(@alimento_española1.impacto_c(3000)).to eq("Bajo")
	    expect(@alimento_española2.impacto_g(54)).to eq("Bajo")
    end

    it " mujer " do
	    expect(@alimento_española1.impacto_c(2300)).to eq("Bajo")
	    expect(@alimento_española1.impacto_g(41)).to eq("Bajo")

	    expect(@alimento_española1.impacto_c(2300)).to eq("Bajo")
	    expect(@alimento_española1.impacto_g(41)).to eq("Bajo")
    end
  end

  context "Gases totales" do
    it "Conocer los gases" do
	    expect(@alimento_española1.to_gases + @alimento_española2.to_gases).to be(54.2)
    end
  end
  
  context "Práctica 8" do

	  context "Comparar Kcal" do

	  it "Comprobar Kcal" do

		  expect((@alimento_española1.carac).round).to eq(112)
		  expect((@alimento_española2.carac).round).to eq(155)

	  end

	  it "Pruebas comparables" do
		  expect(@alimento_española1.prot < @alimento_española2.prot).to eq(false)
		  expect(@alimento_española1.prot > @alimento_española2.prot).to eq(true)
		  expect(@alimento_española1.prot == @alimento_española2.prot).to eq(false)
		  expect(@alimento_española1.prot <= @alimento_española2.prot).to eq(false)
		  expect(@alimento_española1.prot >= @alimento_española2.prot).to eq(true)

	  end

	  end

	  context "Listas" do

		  it "Collect" do

			  @lista_e.insert_head(@alimento_española1.prot)
			  @lista_e.insert_head(@alimento_española2.prot)
			  @lista_e.insert_head(@alimento_española3.prot)
			  expect(@lista_e.collect{|i| i.to_s}).to eq(["3.3","13.0","21.1"])

		  end
 
		  it "Select" do

			  #@lista_e.insert_head(@alimento_española1.prot)
			  #@lista_e.insert_head(@alimento_española2.prot)
			  #@lista_e.insert_head(@alimento_española3.prot)

			  #expect(@lista_e.select).to eq([])

		  end

		  it "Max" do


			  @lista_e.insert_head(@alimento_española1.prot)
			  @lista_e.insert_head(@alimento_española2.prot)

        expect(@lista_e.max).to eq(@alimento_española1.prot)


		  end

		  it "Min" do

			  @lista_e.insert_head(@alimento_española1.prot)
			  @lista_e.insert_head(@alimento_española2.prot)
			  
			  expect(@lista_e.min).to eq(@alimento_española3.prot)


		  end

		  it "Sort" do

			  @lista_e.insert_head(@alimento_española1.prot)
			  @lista_e.insert_head(@alimento_española2.prot)
			  @lista_e.insert_head(@alimento_española3.prot)

			  expect(@lista_e.sort).to eq([3.3,3.3,13.0,13.0,13.0,13.0,21.1,21.1,21.1,21.1])

		  end

	  end

  end
  
end