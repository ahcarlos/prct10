
 
 Node= Struct.new(:prev, :value, :next)



module List
    
    class List

        attr_accessor :inicio, :fin
        def initialize(node)
            
            @inicio= node
            @fin= node
        end
        
        
        def extract_beg()
            
            if (@inicio != nil)
                aux= @inicio
                @inicio= @inicio.next
                return aux
            else
                return nil
            end
        end
        
        
        
        def insert_single_beg(nodo) #inicio
            if(@inicio == nil)
                @inicio= nodo
                @fin= nodo
            else
                aux= @inicio.next
                @inicio= nodo
                @inicio.next= aux
                @inicio.prev= aux
            end
        end
        
        def insert_single_end(nodo) #Insertar al final
            if(@end != nil)
              aux= @fin.next
              @fin= nodo
              @fin.prev= aux
              @fin.next= nil
            else
                @inicio= nodo
                @fin= nodo
            end
                
        end
        
        
        
        
        def extract_end() #Extraer al final
            if(@fin != nil)
                aux= @fin
                @fin= @fin.prev
                return aux
            else
                return nil
            end
            
        end
        
        
        
        
        def insert_multiple_beg(nodos) #insertar multiple al principio
            nodos.each do |element|
                insert_single_beg(element)
            end
        end
        
        def insert_multiple_end(nodos) #Insertar multiple al final
            nodos.each do |element|
                insert_single_end(element)
            end
        end
        
        
        
        
        def empty() #Comprueba si la lista esta vacia
            
            if(@inicio == nil)
                return true
            else
                return false
            end
            
        end
    end

end