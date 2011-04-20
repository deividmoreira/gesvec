class PermissaosController < ApplicationController
  # GET /permissaos
  # GET /permissaos.xml
  def index
    @permissaos = Permissao.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @permissaos }
    end
  end

  # GET /permissaos/1
  # GET /permissaos/1.xml
  def show
    @permissao = Permissao.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @permissao }
    end
  end

  # GET /permissaos/new
  # GET /permissaos/new.xml
  def new
    @permissao = Permissao.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @permissao }
    end
  end

  # GET /permissaos/1/edit
  def edit
    @permissao = Permissao.find(params[:id])
  end

  # POST /permissaos
  # POST /permissaos.xml
  def create
    @permissao = Permissao.new(params[:permissao])

    respond_to do |format|
      if @permissao.save
        format.html { redirect_to(@permissao, :notice => 'Permissao was successfully created.') }
        format.xml  { render :xml => @permissao, :status => :created, :location => @permissao }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @permissao.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /permissaos/1
  # PUT /permissaos/1.xml
  def update
    @permissao = Permissao.find(params[:id])

    respond_to do |format|
      if @permissao.update_attributes(params[:permissao])
        format.html { redirect_to(@permissao, :notice => 'Permissao was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @permissao.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /permissaos/1
  # DELETE /permissaos/1.xml
  def destroy
    @permissao = Permissao.find(params[:id])
    @permissao.destroy

    respond_to do |format|
      format.html { redirect_to(permissaos_url) }
      format.xml  { head :ok }
    end
  end
end
