class ActorsController < ApplicationController
  # GET /actors
  # GET /actors.json
  def index
    @actors = Actor.all
		get_all_dvds
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @actors }
    end
  end

  # GET /actors/1
  # GET /actors/1.json
  def show
    @actor = Actor.find(params[:id])
    #get_all_dvds
		get_all_dvds_for_actor
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @actor }
    end
  end

  # GET /actors/new
  # GET /actors/new.json
  def new
    @actor = Actor.new
		get_all_dvds
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @actor }
    end
  end

  # GET /actors/1/edit
  def edit
    @actor = Actor.find(params[:id])
    get_all_dvds
  end

  # POST /actors
  # POST /actors.json
  def create
    @actor = Actor.new(params[:actor])
    get_all_dvds

    respond_to do |format|
      if @actor.save
        format.html { redirect_to @actor, notice: 'Actor was successfully created.' }
        format.json { render json: @actor, status: :created, location: @actor }
      else
        format.html { render action: "new" }
        format.json { render json: @actor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /actors/1
  # PUT /actors/1.json
  def update
    @actor = Actor.find(params[:id])
		get_all_dvds
    respond_to do |format|
      if @actor.update_attributes(params[:actor])
        format.html { redirect_to @actor, notice: 'Actor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @actor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actors/1
  # DELETE /actors/1.json
  def destroy
    @actor = Actor.find(params[:id])
    @actor.destroy

    respond_to do |format|
      format.html { redirect_to actors_url }
      format.json { head :no_content }
    end
  end
  
  
  def get_all_dvds
    @dvds = Dvd.find(:all, :order => :name)
  end
  
    
  def get_all_dvds_for_actor
   # @ndvds = Dvd.find_by_name(:name)
        @dvds = Dvd.find(:all, :order => :name)

				
  end
  

end

