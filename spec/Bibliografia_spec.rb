require 'spec_helper'
require 'Bibliografia'
require 'Bibliografia/list'

describe Bibliografia do
    
    #Inicializacion de los autores y editoriales
    autores= ['Gabriel Garcia Marquez', 'Megan Maxwell', 'Julio Verne', 'William Shakespeare']
    isbn = [23231, 2910019226453, 33849394, 1934356379, 596516178]
    editoriales= ['Random House', 'Planeta', 'Ruby', 'O’Reilly Media']
    
    l1= Bibliografia::Bibliografia.new("De viaje por Europa del Este", autores[0], editoriales[0], 2292, 23232, 2015, isbn[0], 243424)
    l2= Bibliografia::Bibliografia.new("Pideme lo que quieras y te lo dare", autores[1], editoriales[1], 4882, 222, 2015, isbn[1], 222)
    l3= Bibliografia::Bibliografia.new("The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends", autores[2], editoriales[2], 255, 333, 2010, isbn[2], 555)
    l4= Bibliografia::Bibliografia.new(" The Ruby Programming Language", autores[3], editoriales[3], 355, 455, 2008, isbn[3], 999)
    
    
    describe Node do
        
        nodo1= Node.new(l1, l2)
        nodo2= Node.new(l2, nil)
        
        
        it "Existe un nodo con sus datos y su siguiente" do
    
    
            expect(nodo2.value).to eq(l2)
            expect(nodo2.next).to eq(nil)
    
        end
    end
    

    describe List do
    
    
          nodo1 = Node.new(l1, nil)
          nodo2= Node.new(l2, nil)
          nodo3= Node.new(l3, nil)
          nodo4= Node.new(l4, nil)
          
          list= List::List.new(nodo1)
          conj_nodos=[nodo1, nodo2, nodo3, nodo4]
          
          list2= List::List.new(nil)
         
          it "Existe una lsita con su cabeza" do
            
            expect(list.inicio).to eq(nodo1)
            
          end
          
          
          
          
          it "Se puede insertar un elemento en la lista" do
            
            list.insert_single(nodo2)
            expect(list.inicio).to eq(nodo2)
            
          end
          
          
          
           
          it "Se extrae el primer elemento de la lista" do
            
            expect(list.extract_beg()).to eq(nodo2)
            
          end
          
          it "Se pueden insertar varios elementos" do
            
            list.insert_multiple(conj_nodos)
            
            expect(list.inicio).to eq(conj_nodos[3])
            
          end
          
          
          
          
          
          it "La lista no está vacia" do
              
                expect(list.empty()).to eq(false)
                
           end
           
           
           
           it "La lista está vacía" do
               expect(list2.empty()).to eq(true)
               
          end
          
          
=begin  
          end
          
          
          
          
          
          
          
          
          it "Se pueden insertar varios elementos" do
            
            list.insert_multiple(conj_nodos)
            expect(list.inicio).to eq(conj_nodos[3])
            
          end
            
=end       
            
    end

end













