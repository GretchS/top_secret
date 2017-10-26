class DocumentsController < ApplicationController
  before_action :set_document, only: [:show, :edit, :update]

  def index
    if signed_in?
    company = current_user.company
    @documents = Document.where(company: company)
    end
  end

  def show
    # @document = Document.find(params[:id])
    # authorize @document

    #because we use this code three times, set it uup in set_document below and make it a before action
  end

  def edit
    # @document = Document.find(params[:id])
    # authorize @document
  end

  def update
    # @document = Document.find(params[:id])
    # authorize @document
    if @document.update(document_params)
      # success, go to #show page
      redirect_to @document
    else
      # error, render the edit forma again
      render :edit
    end 
  end

  private
    def document_params
      params.require(:document).permit(:name, :content)
    end

    def set_document
      @document = Document.find(params[:id])
      authorize @document
    end

  end

