class ParentPdf < Prawn::Document
 
  

  def initialize(libro)
    super(top_margin: 70)
    @libro = libro
    text "Libro \##{@libro.nombre}"
    text "Idiomas \##{@libro.idiomas.map(&:nombre).join(', ')}"

  end
 
  end