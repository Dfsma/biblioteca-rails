class AutorsLibrosController < ApplicationController
  before_action :set_autors_libro, only: [:show, :edit, :update, :destroy]

  # GET /autors_libros
  # GET /autors_libros.json
  def index
    @autors_libros = AutorsLibro.all
  end

  # GET /autors_libros/1
  # GET /autors_libros/1.json
  def show
  end

  # GET /autors_libros/new
  def new
    @autors_libro = AutorsLibro.new
  end

  # GET /autors_libros/1/edit
  def edit
  end

  # POST /autors_libros
  # POST /autors_libros.json
  def create
    @autors_libro = AutorsLibro.new(autors_libro_params)

    respond_to do |format|
      if @autors_libro.save
        format.html { redirect_to @autors_libro, notice: 'Autors libro was successfully created.' }
        format.json { render :show, status: :created, location: @autors_libro }
      else
        format.html { render :new }
        format.json { render json: @autors_libro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /autors_libros/1
  # PATCH/PUT /autors_libros/1.json
  def update
    respond_to do |format|
      if @autors_libro.update(autors_libro_params)
        format.html { redirect_to @autors_libro, notice: 'Autors libro was successfully updated.' }
        format.json { render :show, status: :ok, location: @autors_libro }
      else
        format.html { render :edit }
        format.json { render json: @autors_libro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /autors_libros/1
  # DELETE /autors_libros/1.json
  def destroy
    @autors_libro.destroy
    respond_to do |format|
      format.html { redirect_to autors_libros_url, notice: 'Autors libro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_autors_libro
      @autors_libro = AutorsLibro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def autors_libro_params
      params.require(:autors_libro).permit(:libro_id, :autor_id)
    end
end
