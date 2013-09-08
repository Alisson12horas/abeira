class PodcastsController < ApplicationController
  :respond_to :html

  def index
    @podcasts = Podcast.order("id DESC").paginate(:page => params[:page], :per_page => 5)
  end

  def show
    @podcast = Podcast.find(params[:id])
  end

  def new
    @podcast = Podcast.new
  end

  # GET /podcasts/1/edit
  def edit
    @podcast = Podcast.find(params[:id])
  end

  # POST /podcasts
  # POST /podcasts.json
  def create
    @podcast = Podcast.new(params[:podcast])

    respond_to do |format|
      if @podcast.save
        format.html { redirect_to @podcast, notice: 'Podcast criado com sucesso!' }
        format.json { render json: @podcast, status: :created, location: @podcast }
      else
        format.html { render action: "new" }
        format.json { render json: @podcast.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /podcasts/1
  # PUT /podcasts/1.json
  def update
    @podcast = Podcast.find(params[:id])

    respond_to do |format|
      if @podcast.update_attributes(params[:podcast])
        format.html { redirect_to @podcast, notice: 'Podcast was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @podcast.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /podcasts/1
  # DELETE /podcasts/1.json
  def destroy
    @podcast = Podcast.find(params[:id])
    @podcast.destroy

    respond_to do |format|
      format.html { redirect_to podcasts_url }
      format.json { head :no_content }
    end
  end
end
