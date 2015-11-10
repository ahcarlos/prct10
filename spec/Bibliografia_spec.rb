require 'spec_helper'
require 'Bibliografia'
require 'Bibliografia/list'

describe Bibliografia do
    
    #Inicializacion de los autores y editoriales
    autores= ['Gabriel Garcia Marquez', 'Megan Maxwell', 'Julio Verne', 'William Shakespeare']
    isbn = [23231, 2910019226453, 33849394]
    editoriales= ['Random House', 'Planeta']
    
    l1= Bibliografia::Bibliografia.new("De viaje por Europa del Este", autores[0], editoriales[0], 2292, 23232, 2015, isbn[0], 243424)
    l2= Bibliografia::Bibliografia.new("Pideme lo que quieras y te lo dare", autores[1], editoriales[1], 4882, 222, 2015, isbn[1], 222)
    
    
    
    describe Node do
        nodo1= Node.new(l1, l2)
        nodo2= Node.new(l2, nil)
        
        
        it "Existe un nodo con sus datos y su siguiente" do
    
            expect(nodo2.value).to eq(l2)
            expect(nodo2.next).to eq(nil)
    
        end
        
    
    end
    
=begin
    describe List do
    
          nodo1 = List::Node.new(2, nil)
          nodo2= List::Node.new(4, nil)
          list= List::List.new(nodo1)
          conj_nodos= []
          a= 2
          
          for i in 0..3 do
            conj_nodos[i]= List::Node.new(a, nil)
            a += 2
          end
          
          
          
          it "Existe un nodo con sus datos y su siguiente" do
            
            expect(nodo1.value).to eq(2)
            expect(nodo1.next).to eq(nil)
            
          end
          
          
          it "Existe una lsita con su cabeza" do
            
            expect(list.inicio).to eq(nodo1)
            
          end
          
          it "Se extrae el primer elemento de la lista" do
            
            expect(list.extract_beg()).to eq(nodo1)
            
          end
          
          
          it "Se puede insertar un elemento en la lista" do
            
            list.insert_single(nodo2)
            expect(list.inicio).to eq(nodo2)
            
          end
          
          it "Se pueden insertar varios elementos" do
            
            list.insert_multiple(conj_nodos)
            expect(list.inicio).to eq(conj_nodos[3])
            
          end
            
            
            
    end
=end
end













