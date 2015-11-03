require 'spec_helper'
require 'Bibliografia'

describe Bibliografia do
    
    #Inicializacion de los autores y editoriales
    autores= ['Gabriel Garcia Marquez', 'Megan Maxwell', 'Julio Verne', 'William Shakespeare']
    editoriales= ['Random House', 'Planeta']
    
    l1= Bibliografia::Bibliografia.new("De viaje por Europa del Este", autores[0], editoriales[0], 2292, 23232, 2015, 23231, 243424)
    l2= Bibliografia::Bibliografia.new("Pideme lo que quieras y te lo dare", autores[1], editoriales[1], 4882, 2910019226453, 2015, 222, 222)
    
    context "# Almacenamiento de las variables del libro 1" do
        it "Se almacena el titulo" do
            expect(l1.GetTitulo).to eq("De viaje por Europa del Este")
        end
        
        it "Se almacena el autor" do
            expect(l1.GetAutor).to eq("Gabriel Garcia Marquez")
        end
        

            
    end    
    
    
end

