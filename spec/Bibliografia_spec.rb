require 'spec_helper'
require 'Bibliografia'
require 'Bibliografia/list'

describe List do
     

    context "#Pruebas include enumerable" do
   
       before :all do
            @libro1= Bibliografia::Libro.new("Los pilares de la Tierra","Ken Folletdd", 2013, 1449325866, "edition", 6)
            @libro2= Bibliografia::Libro.new("Dama del Nilo","Pauline Gedge", 2010, 1449325555866, "Mi editorial", 3) 
            @libro3= Bibliografia::Libro.new("Serie Revolucion","Simon Scarrow", 2000, 14866, "edition1", 1)
            @libro4= Bibliografia::Libro.new("Ramos y su perrito del patio","Simon Scarrow", 2000, 1499899866, "edition1", 166)
            
            @list1 = List::List.new()
            @list2 = List::List.new()
            
            @list1.insert_single_beg(@libro1)
            @list1.insert_single_beg(@libro2)
            @list1.insert_single_beg(@libro3)
            @list1.insert_single_beg(@libro4)
        end
        
        
         it "#Comprobrando max. El máximo es Serie Revolución porque es la letra más cercana a la Z" do
         expect(@list1.max).to eq(@libro3)
        end
        
        it "# Comprobrando min. El mínimo es Dama del Nilo porque es la letra más cercana a la A" do
         expect(@list1.min).to eq(@libro2)
        end
        
        it "# Comprobando sort" do
            expect(@list1.sort).to eq([@libro2, @libro1, @libro4, @libro3])
        end
        
        it "# Comprobrando el metodo 'all?' con un bloque vacio" do
        #all? -> The method returns true if the block never returns false or nil
          
          expect(@list2.all?).to eq(false)
        end 
        
        it "# Comprobrando el metodo 'any?' " do
        #any -> The method returns true if the block ever returns a value other than false or nil
          expect(@list1.any?).to eq(true)
          expect(@list2.any?).to eq(false)
        end 
        
        it "# Comprobando el metodo take" do
            #Returns an array containing the first n (2) elements
            expect(@list1.take(2)).to eq([@libro4, @libro3])
        end
        
        it "# Comprobando el metodo find" do
            expect(@list1.find{|i| i== @libro3}).to eq(@libro3)
        end

        
    end
        
describe Bibliografia do
            
        context "#Pruebas include comparable" do
            
            before :all do
                @libro1= Bibliografia::Libro.new("Git Pocket Guide O'Reilly Media","David Chelimsky", 2013, 1449325866, "edition", 1)
                @libro2= Bibliografia::Libro.new("Viaje Alrededor del Mundo","Samuel Ramos", 2010, 1449325555866, "Mi editorial", 3)
                @libro3= Bibliografia::Libro.new("Una historia de miedo","Alberto Barrera", 2015, 1449325555866, "Mi editorial", 3)
                @libro4= Bibliografia::Libro.new("Viaje Alrededor del Mundo","Samuel Ramos", 2010, 1449325555866, "Mi editorial", 3)
                @libro5= Bibliografia::Libro.new("Dama del Nilo","Pauline Gedge", 2010, 1449325555866, "Mi editorial", 3) 
                @libro6= Bibliografia::Libro.new("Serie Revolución","Simon Scarrow", 2000, 14866, "edition1", 1)
            end
            
            it "# El libro1 (G) es menor (<) estricto que el libro 2 (V) " do
                 expect(@libro1 < @libro2).to eq(true)
            end
            
            it "# El libro1 (G) es menor o igual (<=) al  libro 2 (V) " do
                 expect(@libro1 <= @libro2).to eq(true)
            end
            
            it"# El libro2 es igual (==) al libro4" do
                expect(@libro2 == @libro4).to eq(true)
            end
            
            it "# El libro6 (S) es mayor estricto (>) que el libro5 (D)" do
                expect(@libro6 > @libro5).to eq(true)
            end
            
            it "# El libro6 (S) es mayor o igual (>=) que el libro5 (D)" do
                expect(@libro6 >= @libro5).to eq(true)
            end
            
        end
end
    



end













