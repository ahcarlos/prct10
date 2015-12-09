#!/usr/bin/env ruby
# encoding: utf-8

require 'spec_helper'
require 'Bibliografia'
require 'Bibliografia/list'


describe Bibliografia do
            
        context "#Pruebas con libros" do
            
            before :all do
               
                @libro1 = Bibliografia::Libro.new("Follet, K.", 2015, "Los pilares de la tierra","5º edición", "volumen 1", "Lugar publicacion", "Salamandra")
                @libro2 = Bibliografia::Libro.new("Autor, B. A.", 2015, "AAAA","5º edición", "volumen 1", "Lugar 2", "Anaya" )
                @libro3 = Bibliografia::Libro.new("Autor, B. A.", 2019, "AAAA","5º edición", "volumen 1", "Lugar 3", "Libros")
                @libro4 = Bibliografia::Libro.new("Autor, B. A.", 2019, "Titulo diferente a libro 3","5º edición", "volumen 1", "Lugar 4", "Mieditorial")
                
                @lista1= List::List.new()
                @lista2 = List::List.new()
                @lista3 = List::List.new()
                
                @lista1.insert_single_beg(@libro1)
                @lista1.insert_single_beg(@libro2)
                
                @lista2.insert_single_beg(@libro2)
                @lista2.insert_single_beg(@libro3)
                
                @lista3.insert_single_beg(@libro3)
                @lista3.insert_single_beg(@libro4)
                
                
              
                
            end
            
            
             it "Los autores son distintos" do
                expect(@lista1.sort).to eq([@libro2,@libro1])
             end
         
            it "Los autores son iguales,ordenamos por fechas" do
                expect(@lista2.sort).to eq([@libro2,@libro3])
            end
            
            it "Los autores son iguales, las fechas son iguales, ordenando por título" do
                expect(@lista3.sort).to eq([@libro3,@libro4])
            end
            
            it "Mostrando en formato APA" do
                expect(@libro1.to_s()).to eq("Follet, K.(2015). Los pilares de la tierra(5º edición) (volumen 1). Lugar publicacion: Salamandra.")
            end
            
        end
        
        context "#Pruebas con todas las referencias" do
            
            before :all do
                @libro = Bibliografia::Libro.new("Autor, A. A.", 2020, "AAAA","5º edición", "vol 1", "Marte", "Salamandra")
                @articulo = Bibliografia::Articulo.new("Autor, B. A.", 2020, "BBBB", "A. Editor","AAAA",50,"5ª edición","vol 1", "Marte", "Salamandra")
                @doc = Bibliografia::Edoc.new("Autor, D. B.", 2014,"DDDD","1ª edición","tipo de medio","Mercurio","Editor","url",2015)
    
                @lista1 = List::List.new()
                
                @lista1.insert_single_beg(@libro)
                @lista1.insert_single_beg(@articulo)
                @lista1.insert_single_beg(@doc)
                
                
                @libro2 = Bibliografia::Libro.new("Follet, K. & Dueñas, M. ", 1992, "AAAA","edición", "vol 7", "Editado", "Editorial")
                @articulo2 = Bibliografia::Articulo.new("Verne, J. & Lindo, E.", 2070, "BBBB", "Un Editor","AAAA",50,"5ª edición","vol 1", "Lugar publicacion", "perenquen")
                @electronico2 = Bibliografia::Edoc.new("Lindo, E.", 1990,"FFFF","tercera edicion","medio","Mercurio","Editor","source",2015)
                @electronico3 = Bibliografia::Edoc.new("Dueñas, M.", 1990,"FFFF","tercera edicion","medio","Mercurio","Editor","source",2015)
                
                
                @lista2 = List::List.new()
                @lista2.insert_single_beg(@electronico2)
                @lista2.insert_single_beg(@articulo2)
                @lista2.insert_single_beg(@libro2)
                @lista2.insert_single_beg(@electronico3)
                @lista2.sort
              
                
            end
            
            it "Se ordena alfabeticamente por apellidos" do
                expect(@lista1.sort).to eq([@libro,@articulo, @doc])
            end
            
            
=begin  
             it "Se ordena por autores individuales en caso de que haya más de uno " do
                expect(@lista2.inicio).to eq(@electronico2)
                expect(@lista2.fin).to eq(@electronico3)
            end
=end
            
        end
end
    
















