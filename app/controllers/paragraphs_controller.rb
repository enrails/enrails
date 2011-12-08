class ParagraphsController < ApplicationController
  # GET /paragraphs
  # GET /paragraphs.json
  def index
    @paragraphs = Paragraph.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @paragraphs }
    end
  end

  # GET /paragraphs/1
  # GET /paragraphs/1.json
  def show
    @sections=Section.all
    @paragraph = Paragraph.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @paragraph }
    end
  end

  # GET /paragraphs/new
  # GET /paragraphs/new.json
  def new
    @sections=Section.all
    if params[:tipo]
    	 @project=Project.find(params[:id])
   		 @paragraph = @project.paragraphs.new
    else
    	@section=Section.find(params[:id])
    	@paragraph = @section.paragraphs.new
	end
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @paragraph }
    end
  end

  # GET /paragraphs/1/edit
  def edit
    @sections=Section.all
    @paragraph = Paragraph.find(params[:id])
  end

  # POST /paragraphs
  # POST /paragraphs.json
  def create
    @paragraph = Paragraph.new(params[:paragraph])

    respond_to do |format|
      if @paragraph.save
        format.html { redirect_to @paragraph, notice: 'Paragraph was successfully created.' }
        format.json { render json: @paragraph, status: :created, location: @paragraph }
      else
        format.html { render action: "new" }
        format.json { render json: @paragraph.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /paragraphs/1
  # PUT /paragraphs/1.json
  def update
    @paragraph = Paragraph.find(params[:id])

    respond_to do |format|
      if @paragraph.update_attributes(params[:paragraph])
        format.html { redirect_to @paragraph, notice: 'Paragraph was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @paragraph.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paragraphs/1
  # DELETE /paragraphs/1.json
  def destroy
    @paragraph = Paragraph.find(params[:id])
    @section=@paragraph.section
    @paragraph.destroy

    respond_to do |format|
      format.html { redirect_to section_url(@section) }
      format.json { head :ok }
    end
  end
end
