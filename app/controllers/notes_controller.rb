class NotesController < ApplicationController
    before_action :set_note, only: [:edit, :update, :destroy]

  def index
   @q = Note.ransack(params[:q])
   @notes = @q.result
  end

  def new
   @note = Note.new
  end

  def create
    @note = Note.new(notes_params)
    if @note.save
     redirect_to notes_path, notice: "活動記録を作成しました！"
    else
      render 'new'
    end
  end
  

  def edit
  end
  
  def update
    if @note.update(notes_params)
      redirect_to notes_path, notice: "活動記録を更新しました！"
    else
      render 'edit'
    end
  end  
  

  def destroy
    @note.destroy
    redirect_to notes_path, notice: "活動記録を削除しました！"    
  end

  private
    def notes_params
      params.require(:note).permit(:date, :grade, :place, :book_title, :author, :member)
    end
    
    def set_note
      @note = Note.find(params[:id])
    end  
   
end
