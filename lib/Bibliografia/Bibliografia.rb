module Bibliografia
	class Bibliografia
	  attr_reader :titulo, :autor, :editorial, :num_edicion,
	              :serie, :fecha_publicacion, :isbn,
	              :referencia

	  def initialize(t, a, e, n, s, f, i, r)
	    @titulo = t
			@autor = a
	    @editorial = e
	    @num_edicion = n
	    @serie = s
	    @fecha_publicacion = f
	    @isbn = i
	    @referencia = r
	  end
		def GetAutor()
			@autor
		end

		def SetAutor(valor)
			@autor = valor
		end
		
	  def SetTitulo(valor)
	    @titulo = valor
	  end

	  def GetTitulo()
	    @titulo
	  end

	  def SetEditorial(valor)
	    @editorial = valor
	  end

	  def GetEditorial()
	    @editorial
	  end

	  def SetEditorial(valor)
	    @editorial = valor
	  end

	  def GetNum_edicion()
	    @num_edicion
	  end

	  def SetNum_edicion(valor)
	    @num_edicion = valor
	  end

	  def GetSerie()
	    @serie
	  end

	  def SetSerie(valor)
	    @serie = valor
	  end

	  def GetFecha_publicacion()
	    @fecha_publicacion
	  end

	  def SetFecha_publicacion(valor)
	    @fecha_publicacion = valor
	  end

	  def GetIsbn()
	    @isbn
	  end

	  def SetIsbn(valor)
	    @isbn = isbn
	  end

	  def GetReferencia()
	    @referencia
	  end

	  def SetReferencia(valor)
	    @referencia = valor
	  end
	end
end
