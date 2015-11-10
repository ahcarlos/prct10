
 
 Node= Struct.new(:value, :next)



module List
    
    class List

        attr_reader :inicio
        def initialize(node)
            @inicio= node
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
        
        def insert_single(nodo) #inicio
            if(@inicio == nil)
                @inicio= nodo
            else
                aux= @inicio.next
                @inicio= nodo
                @inicio.next= aux
            end
        end
        
        def insert_multiple(nodos)
            nodos.each do |element|
                insert_single(element)
            end
        end
        
        def empty()
            if(@inicio == nil)
                return true
            else
                return false
            end
            
        end
    end

end