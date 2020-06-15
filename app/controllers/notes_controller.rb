class NotesController < ApplicationController
    def index
        notes = Note.all
        options = {
            include: [:user]
        }
        render json: NoteSerializer.new(notes, options)
    end

    def show
        note = Note.find_by(id: params[:id])
        render json: NoteSerializer.new(note)
    end
end
