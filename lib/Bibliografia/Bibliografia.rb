module Bibliografia
	class Bibliografia
		  attr_accessor :titulo, :autor, :fecha_publicacion 
	
		include Comparable
	
		  def initialize(autor, fecha_publicacion, titulo) 
		    @autor= autor
		    @fecha_publicacion= fecha_publicacion
		    @titulo= titulo
		  end
	
		
		def <=>(other)
			#return nil unless other.kind_of? Bibliografia::Bibliografia
				
			#return nil unless other.kind_of? Bibliografia::Bibliografia
			if((@autor == other.autor)== 0)
					if((@fecha_publicacion <=> other.fecha_publicacion)==0)
						@titulo <=> other.titulo
					else
						@fecha_publicacion <=> other.fecha_publicacion
					end
			else
				@autor <=> other.autor
				
			end
		end
		
		
		
		def to_s()
	        			
	    end
		
	end
	
	
	
	
	class Libro < Bibliografia
		attr_accessor  :edicion, :volumen, :lpublicacion, :editor
		def initialize(autor, fecha_publicacion, titulo, edicion, volumen, lug_pub, editor)
		
               @autor = autor
               @fecha_publicacion = fecha_publicacion
               @titulo = titulo
               @edicion = edicion
               @volumen = volumen 
               @lpublicacion = lug_pub
               @editor= editor
               
		end
		
		def to_s()
			@s = "#{@autor}"+"("+"#{@fecha_publicacion}"+"). "+"#{@titulo}"+"("+"#{@edicion}"+") ("+"#{@volumen}"+"). "+"#{@lpublicacion}"+": "+"#{@editor}"+"."
		end
	end
	
	class Articulo < Bibliografia
		attr_accessor  :eds, :titulo2, :pags, :edicion, :volumen, :lpublicacion, :editor
		def initialize(autor, fecha_publicacion, titulo, eds, titulo2, pags, edicion, volumen, lug_pub, editor)
			
			@autor = autor
            @fecha_publicacion = fecha_publicacion
            @titulo = titulo
            @eds = eds
            @titulo2 = titulo2
            @pags = pags
            @edicion = edicion
            @volumen = volumen
            @lpublicacion = lug_pub
            @editor = editor
            
		end
		
	end
	
	class Edoc < Bibliografia
		attr_accessor :edicion, :tipo_medio, :lug_pub, :editor, :source, :fechacceso
		def initialize( autor, fecha_publicacion, titulo, edicion, tipo_medio, lug_pub, editor, source, fechacceso)
			@autor = autor
            @fecha_publicacion = fecha_publicacion
            @titulo = titulo
            @edicion = edicion	
            @tipo_medio = tipo_medio
            @lpublicacion = lug_pub
            @editor = editor
            @source = source
            @fechacceso = fechacceso
		end
	end
end
	
