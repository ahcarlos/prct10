module Bibliografia
	class Bibliografia
		  attr_accessor :titulo, :autor, :fecha_publicacion 
	
		include Comparable
	
		  def initialize(titulo, autor, fecha_publicacion) 
		    @titulo= titulo
		    @autor= autor
		    @fecha_publicacion= fecha_publicacion
		  end
	
		
		def <=>(other)
			#return nil unless other.kind_of? Bibliografia::Bibliografia
			@titulo <=> other.titulo
		end
		
		def ==(other)
			#return nil unless other.kind_of? Bibliografia::Bibliografia
			@titulo == other.titulo
		end
	end
	
	
	
	class Libro < Bibliografia
		attr_accessor :isbn, :editorial, :num_edicion
		def initialize(titulo, autor, fecha_publicacion, isbn, editorial, num_edicion)
			@titulo= titulo
		    @autor= autor
		    @fecha_publicacion= fecha_publicacion
			@isbn= isbn
			@editorial= editorial
			@num_edicion= num_edicion
		end
	end
	
	class Revista < Bibliografia
		attr_accessor :issn,  :nombre_revista
		def initialize(titulo, autor, fecha_publicacion, issn, nombre_revista)
			@titulo= titulo
		    @autor= autor
		    @fecha_publicacion= fecha_publicacion
			@issn= issn
			@nombre_revista= nombre_revista
		end
		
	end
	
	class Ebook < Bibliografia
		attr_accessor :url, :formato
		def initialize(titulo, autor, fecha_publicacion, url, formato)
			@titulo= titulo
		    @autor= autor
		    @fecha_publicacion= fecha_publicacion
			@url= url
			@formato= formato
		end
	end
end
	
