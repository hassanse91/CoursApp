class DocumentsController < ApplicationController
  before_action :set_document, only: [:show, :edit, :update, :destroy]
  before_action :set_cour
  def create
    @cour = Cour.find(params[:cour_id])
    @document = @cour.documents.new(document_params)

      if @document.save
        redirect_to @cour
      else
        render 'new'
      end
   
  end

  # PATCH/PUT /documents/1
  # PATCH/PUT /documents/1.json
  def update
    respond_to do |format|
      if @document.update(document_params)
        format.html { redirect_to @document, notice: 'Document was successfully updated.' }
        format.json { render :show, status: :ok, location: @document }
      else
        format.html { render :edit }
        format.json { render json: @document.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /documents/1
  # DELETE /documents/1.json
  def destroy
    @document.destroy
    redirect_to @cour
   
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_document
      @document = Document.find(params[:id])
    end
    def set_cour
      @cour = Cour.find(params[:cour_id])
    end
  
    # Never trust parameters from the scary internet, only allow the white list through.
    def document_params
      params.require(:document).permit(:url, :title, :cour_id)
    end
end
