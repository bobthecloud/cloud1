class DvdActorsController < ApplicationController
  # GET /dvd_actors
  # GET /dvd_actors.json
  def index
    @dvd_actors = DvdActor.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dvd_actors }
    end
  end

  # GET /dvd_actors/1
  # GET /dvd_actors/1.json
  def show
    @dvd_actor = DvdActor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dvd_actor }
    end
  end

  # GET /dvd_actors/new
  # GET /dvd_actors/new.json
  def new
    @dvd_actor = DvdActor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dvd_actor }
    end
  end

  # GET /dvd_actors/1/edit
  def edit
    @dvd_actor = DvdActor.find(params[:id])
  end

  # POST /dvd_actors
  # POST /dvd_actors.json
  def create
    @dvd_actor = DvdActor.new(params[:dvd_actor])

    respond_to do |format|
      if @dvd_actor.save
        format.html { redirect_to @dvd_actor, notice: 'Dvd actor was successfully created.' }
        format.json { render json: @dvd_actor, status: :created, location: @dvd_actor }
      else
        format.html { render action: "new" }
        format.json { render json: @dvd_actor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dvd_actors/1
  # PUT /dvd_actors/1.json
  def update
    @dvd_actor = DvdActor.find(params[:id])

    respond_to do |format|
      if @dvd_actor.update_attributes(params[:dvd_actor])
        format.html { redirect_to @dvd_actor, notice: 'Dvd actor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dvd_actor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dvd_actors/1
  # DELETE /dvd_actors/1.json
  def destroy
    @dvd_actor = DvdActor.find(params[:id])
    @dvd_actor.destroy

    respond_to do |format|
      format.html { redirect_to dvd_actors_url }
      format.json { head :no_content }
    end
  end
end
