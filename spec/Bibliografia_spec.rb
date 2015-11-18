require 'spec_helper'
require 'Bibliografia'
require 'Bibliografia/list'

describe Bibliografia do
    
    l1= Bibliografia::Libro.new("Git Pocket Guide O’Reilly Media","David Chelimsky", 2013, 1449325866, "edition", 1)
    l2= Bibliografia::Libro.new("Viaje Alrededor del Mundo","Samuel Ramos", 2010, 1449325555866, "Mi editorial", 3)
    l3= Bibliografia::Libro.new("Una historia de miedo","Alberto Barrera", 2015, 1449325555866, "Mi editorial", 3)
    
    
   
    
    describe Node do
        nodo1 = Node.new(nil, l1, nil)
         
         it "#Existe un Nodo de la lista doblemente enlazada con su prev, datos y next" do
            expect(nodo1.value).to eq(l1)
            expect(nodo1.next).to eq(nil)
            expect(nodo1.prev).to eq(nil)
         end
    end
    
    describe List do
        nodo1 = Node.new(nil, l1, nil)
        nodo2 = Node.new(nil, l2, nil)
        nodo3 = Node.new(nil, l3, nil)
        
        list= List::List.new(nodo1)
        
        conj_nodos= [nodo1, nodo2, nodo3]
        
        it "Existe una lista doblemente enlazada con su cabeza" do
            
            expect(list.inicio).to eq(nodo1)
        end
        
        it "Se inserta un elemento al final" do
            list.insert_single_end(nodo2)
            expect(list.fin).to eq(nodo2)
        end
        
        
        it "Se extrae un elemento al final" do
            
          expect(list.extract_end()).to eq(nodo2)
          
        end
        
        it "Se inserta un elemento al principio" do
          list.insert_single_beg(nodo3)
          expect(list.inicio).to eq(nodo3)
        end
        
        it "Se extrae un elemento al principio" do
          expect(list.extract_beg()).to eq(nodo3)
        end
            
        
        it "Se pueden insertar varios elementos al principio" do
            
            list.insert_multiple_beg(conj_nodos)
            expect(list.inicio).to eq(conj_nodos[2])
            
        end
        
        it "Se pueden insertar varios elementos al final" do
            
            list.insert_multiple_end(conj_nodos)
            expect(list.fin).to eq(conj_nodos[2])
            
        end
        
        describe Bibliografia do
            
            context "Libros" do
                libro1 = Bibliografia::Libro.new("Git Pocket Guide","Richard E. Silverman", 2015,"ISBN-10: 1449325866", "O'Reily", 2)
                
                it "# El libro pertenece a la clase Libro" do
                   expect(libro1.instance_of?Bibliografia::Libro).to eq(true)
                end
                
                it "# El libro pertenece a la jerarquía de Bibliografia" do
                   expect(libro1.kind_of?Bibliografia::Bibliografia).to eq(true)
                end
                
                it "# El libro NO  pertenece a la clase Revista ni a la clase Ebook" do
                   expect(libro1.instance_of?Bibliografia::Revista).to eq(false)
                   expect(libro1.instance_of?Bibliografia::Ebook).to eq(false)
                end
                
            end
            
            context "Revistas" do
                revista1 = Bibliografia::Revista.new("Redes neuronales","Richard E. Silverman", 2015,"ISSN-10: 122449325866", "Nature")
                
                it "# La revista pertenece a la clase Revista" do
                   expect(revista1.instance_of?Bibliografia::Revista).to eq(true)
                   
                end
                
                it "# La revista pertenece a la jerarquía de Bibliografia" do
                   expect(revista1.kind_of?Bibliografia::Bibliografia).to eq(true)
                end
                
                 it "# La revista NO pertenece a la clase Libro ni a la clase Ebook" do
                   expect(revista1.instance_of?Bibliografia::Libro).to eq(false)
                   expect(revista1.instance_of?Bibliografia::Ebook).to eq(false)
                   
                end
                
            end
            
            context "Ebooks" do
                ebook1= Bibliografia::Ebook.new("El tiempo entre costuras", "Maria Dueñas", 2012, "www.librosparatodos.com", "PDF")
                
                 it "#El e-book pertenece a la clase Ebook" do
                   expect(ebook1.instance_of?Bibliografia::Ebook).to eq(true)
                end
                
                it "#El e-book pertenece a la jerarquía de Bibliografia" do
                   expect(ebook1.kind_of?Bibliografia::Bibliografia).to eq(true)
                end
                
                it "#El e-book NO pertenece a la clase Libro ni a la clase Revista" do
                   expect(ebook1.instance_of?Bibliografia::Libro).to eq(false)
                   expect(ebook1.instance_of?Bibliografia::Revista).to eq(false)
                end
                
            end
            
        end
        
    end
    
=begin
    describe List do
     
      
      it "Existe una lista doblemente enlazada con su cabeza" do
            
            expect(list.inicio).to eq(nodo1)
            
      end

      it "Se inserta un elemento al final" do
        list.insert_single_end(nodo2)
        expect(list.fin).to eq(nodo2)
      end

    
      it "Se extrae un elemento al final" do
          expect(list.extract_end()).to eq(nodo2)
      end

      it "Se inserta un elemento al principio" do
          list.insert_single_beg(nodo3)
          expect(list.inicio).to eq(nodo3)
      end
      
      it "Se extrae un elemento al principio" do
          expect(list.extract_beg()).to eq(nodo3)
      end
      
       it "Se pueden insertar varios elementos al principio" do
            
            list.insert_multiple_beg(conj_nodos)
            expect(list.inicio).to eq(conj_nodos[3])
            
        end
        
        it "Se pueden insertar varios elementos al final" do
            
            list.insert_multiple_end(conj_nodos)
            expect(list.fin).to eq(conj_nodos[3])
            
        end
        
        
    end
=end


end













