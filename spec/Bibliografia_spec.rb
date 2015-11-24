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
    



end













