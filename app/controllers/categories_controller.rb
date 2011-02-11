class CategoriesController < ApplicationController
  # GET /users
  # GET /users.xml
  def index
    @categories = Category.find(:all, :order => "name asc")
    @title = "Category Listings"
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @categories }
    end
  end

  # GET /users/1
  # GET /users/1.xml
  def show
    @category = Category.find(params[:id])
    @title = @category.name
    respond_to do |format|
      format.html # profile.html.erb
      format.xml  { render :xml => @category }
    end
  end

  # GET /categorys/new
  # GET /categorys/new.xml
  def new
    @category = Category.new
    @title = "Registration"
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @category }
    end
  end

  # GET /categorys/1/edit
  def edit
    @category = Category.find(params[:id])
  end

  # POST /users
  # POST /users.xml
  def create
    @category = Category.new(params[:category])
    
    respond_to do |format|
      if @category.save
       
        format.html { redirect_to(@category, :notice => 'Category was successfully created.') }
        format.xml  { render :xml => @category, :status => :created, :location => @category }
      else
       
        format.html { render :action => "new" }
        format.xml  { render :xml => @category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.xml
  def update
    @category = Category.find(params[:id])

    respond_to do |format|
      if @category.update_attributes(params[:category])
        format.html { redirect_to(@category, :notice => 'User was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.xml
  def destroy
    @category = Category.find(params[:id])
    @category.destroy

    respond_to do |format|
      format.html { redirect_to(categorys_url) }
      format.xml  { head :ok }
    end
  end
end
