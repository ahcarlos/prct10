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
end
