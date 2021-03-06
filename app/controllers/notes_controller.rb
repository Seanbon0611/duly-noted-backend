class NotesController < ApplicationController
    def index
        notes = Note.all
        render json: notes
    end

    def show
        note = Note.find_by(id: params[:id])
        render json: note
    end

    def create 
        # user = User.find_or_create_by(username: userParams)
        
        note = Note.new(user_id: note_params[:user_id], content: note_params[:content])
        if note.save
            render json: note
        else  
            render json: { error: "There was an error" }
        end
    end

    def delete 
        note = Note.find_by(id: params[:id])
        note.destroy
        render json: { message: "Sucessfully deleted note." }
    end

    private

    def note_params
        params.require(:note).permit(:user_id, :content)
    end
end
