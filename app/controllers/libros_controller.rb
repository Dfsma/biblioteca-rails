class LibrosController < ApplicationController
  before_action :set_libro, only: [:show, :edit, :update, :destroy]

  # GET /libros
  # GET /libros.json
  def index
    @libros = Libro.all
  end

  # GET /libros/1
  # GET /libros/1.json
  def show
  end

  # GET /libros/new
  def new
    @libro = Libro.new
    @libros = Libro.all
  end

  # GET /libros/1/edit
  def edit
    @libros = Libro.all
  end

  # POST /libros
  # POST /libros.json
  def create
    @libro = Libro.new(libro_params)

    params[:libro][:idioma_ids].each do |idioma_id|
      unless idioma_id.empty?
      idioma = Idioma.find(idioma_id)
        @libro.idiomas << idioma
      end
    end

    params[:libro][:autor_ids].each do |autor_id|
      unless autor_id.empty?
      autor = Autor.find(autor_id)
        @libro.autors << autor
      end
    end

    respond_to do |format|
      if @libro.save
        format.html { redirect_to new_libro_path  , notice: 'Libro was successfully created.' }
        format.json { render :show, status: :created, location: @libro }
      else
        format.html { render :new }
        format.json { render json: @libro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /libros/1
  # PATCH/PUT /libros/1.json
  def update
    respond_to do |format|
      if @libro.update(libro_params)
        format.html { redirect_to new_libro_path, notice: 'Libro was successfully updated.' }
        format.json { render :show, status: :ok, location: @libro }
      else
        format.html { render :edit }
        format.json { render json: @libro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /libros/1
  # DELETE /libros/1.json
  def destroy
    @libro.destroy
    respond_to do |format|
      format.html { redirect_to new_libro_path, notice: 'Libro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_libro
      @libro = Libro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def libro_params
      params.require(:libro).permit(:nombre, :idioma_id, :autor_id)
    end
end
