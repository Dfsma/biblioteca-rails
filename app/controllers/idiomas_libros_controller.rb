class IdiomasLibrosController < ApplicationController
  before_action :set_idiomas_libro, only: [:show, :edit, :update, :destroy]

  # GET /idiomas_libros
  # GET /idiomas_libros.json
  def index
    @idiomas_libros = IdiomasLibro.all
  end

  # GET /idiomas_libros/1
  # GET /idiomas_libros/1.json
  def show
  end

  # GET /idiomas_libros/new
  def new
    @idiomas_libro = IdiomasLibro.new
  end

  # GET /idiomas_libros/1/edit
  def edit
  end

  # POST /idiomas_libros
  # POST /idiomas_libros.json
  def create
    @idiomas_libro = IdiomasLibro.new(idiomas_libro_params)

    respond_to do |format|
      if @idiomas_libro.save
        format.html { redirect_to @idiomas_libro, notice: 'Idiomas libro was successfully created.' }
        format.json { render :show, status: :created, location: @idiomas_libro }
      else
        format.html { render :new }
        format.json { render json: @idiomas_libro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /idiomas_libros/1
  # PATCH/PUT /idiomas_libros/1.json
  def update
    respond_to do |format|
      if @idiomas_libro.update(idiomas_libro_params)
        format.html { redirect_to @idiomas_libro, notice: 'Idiomas libro was successfully updated.' }
        format.json { render :show, status: :ok, location: @idiomas_libro }
      else
        format.html { render :edit }
        format.json { render json: @idiomas_libro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /idiomas_libros/1
  # DELETE /idiomas_libros/1.json
  def destroy
    @idiomas_libro.destroy
    respond_to do |format|
      format.html { redirect_to idiomas_libros_url, notice: 'Idiomas libro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_idiomas_libro
      @idiomas_libro = IdiomasLibro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def idiomas_libro_params
      params.require(:idiomas_libro).permit(:idioma_id, :libro_id)
    end
end
