class RecipeNotesController < ApplicationController
  before_action :set_recipe_note, only: %i[ show edit update destroy ]

  # GET /recipe_notes or /recipe_notes.json
  def index
    @recipe_notes = RecipeNote.all
  end

  # GET /recipe_notes/1 or /recipe_notes/1.json
  def show
  end

  # GET /recipe_notes/new
  def new
    @recipe_note = RecipeNote.new
  end

  # GET /recipe_notes/1/edit
  def edit
  end

  # POST /recipe_notes or /recipe_notes.json
  def create
    @recipe_note = RecipeNote.new(recipe_note_params)

    respond_to do |format|
      if @recipe_note.save
        format.html { redirect_to recipe_note_url(@recipe_note), notice: "Recipe note was successfully created." }
        format.json { render :show, status: :created, location: @recipe_note }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @recipe_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipe_notes/1 or /recipe_notes/1.json
  def update
    respond_to do |format|
      if @recipe_note.update(recipe_note_params)
        format.html { redirect_to recipe_note_url(@recipe_note), notice: "Recipe note was successfully updated." }
        format.json { render :show, status: :ok, location: @recipe_note }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @recipe_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipe_notes/1 or /recipe_notes/1.json
  def destroy
    @recipe_note.destroy

    respond_to do |format|
      format.html { redirect_to recipe_notes_url, notice: "Recipe note was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe_note
      @recipe_note = RecipeNote.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def recipe_note_params
      params.fetch(:recipe_note, {})
      params.permit!
    end
end
