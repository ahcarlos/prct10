require 'spec_helper'
require 'Bibliografia'
require 'Bibliografia/list'

describe List do
    
    context "#Pruebas include enumerable" do
    
       before :all do
            @list1 = List::List.new()
            @list2 = List::List.new()
            
            @list1.insert_single_beg(7)
            @list1.insert_single_beg(8)
            @list1.insert_single_beg(9)
            @list1.insert_single_beg(10)
        end
        
        
        it "comprobrando el metodo all? con un bloque vacio" do
        #all? -> The method returns true if the block never returns false or nil
          expect(@list1.all?).to eq(true)
          expect(@list2.all?).to eq(false)
        end 
        
        it "comprobrando el metodo any?" do
        #any -> The method returns true if the block ever returns a value other than false or nil
          expect(@list1.any?).to eq(true)
          expect(@list2.any?).to eq(false)
        end 
        
        it "comprobrando el metodo collect" do
          expect(@list1.map{ |i| i*i}).to eq([100, 81, 64, 49])
          expect(@list1.collect{|i| i*i}).to eq([100, 81, 64, 49])
        end
        
        it "comprobrando el metodo count" do
          expect(@list1.count).to eq(4)
        end
        
        it "comprobrando max" do
         expect(@list1.max).to eq(10)
        end
        
        it "comprobrando min" do
            expect(@list1.min).to eq(7)
        end
        
        it "comprobrando sort" do
          expect(@list1.sort).to eq([7, 8, 9, 10])
        end
        
    end
    
describe Bibliografia do
            
        context "#Pruebas include comparable" do
            
            before :all do
                @libro1= Bibliografia::Libro.new("Git Pocket Guide O'Reilly Media","David Chelimsky", 2013, 1449325866, "edition", 1)
                @libro2= Bibliografia::Libro.new("Viaje Alrededor del Mundo","Samuel Ramos", 2010, 1449325555866, "Mi editorial", 3)
                @libro3= Bibliografia::Libro.new("Una historia de miedo","Alberto Barrera", 2015, 1449325555866, "Mi editorial", 3)
            end
            
            it "El libro1 (G) es menor estricto que el libro 2 (V) " do
                 expect(@libro1 < @libro2).to eq(true)
            end
            
            it "El libro1 (G) es menor o igual al  libro 2 (V) " do
                 expect(@libro1 <= @libro2).to eq(true)
            end
            
        end
end
    



end













