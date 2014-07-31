class NotesController < ApplicationController

  before_action :set_note, only: [:show, :destroy]

  # GET /notes.json
  def index
    @notes = Note.all 
  end

  # GET /notes/1.json
  def show    

  end

  # POST /notes.json
  def create
    @note = Note.new(note_params)

    respond_to do |format|
      if @note.save
        format.json { render action: 'show', status: :created, location: @note }
      else
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end

  end

  # DELETE /notes/1.json
  def destroy
    @note.destroy
    respond_to do |format|git 
      format.json { head :no_content }
    end
  end

  private
    
    def set_note
      @note = Note.find(params[:id])
    end

    def note_params
      params.require(:note).permit(:title)
    end

end
