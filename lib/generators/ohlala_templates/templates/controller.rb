class <%= controller_class_name %>Controller < ApplicationController
  
  before_filter :authenticate,  :except => 'show'
  before_filter :authorize,     :except => 'show'

  def index
    # can't replace 'all' by 'by_recent' automatically. It has to be done by hand
    @<%= plural_table_name %> = <%= orm_class.all(class_name) %>.paginate :page => params[:page], :per_page => 50
    build_admin_menu 1 # calls default admin menu. change admin menu id later
    switch_layout 'admin'
  end

  def show
    @<%= singular_table_name %> = <%= orm_class.find(class_name, "params[:id]") %>
  end

  def new
    @<%= singular_table_name %> = <%= orm_class.build(class_name) %>
    build_admin_menu 1 # calls default admin menu. change admin menu id later
    switch_layout 'admin'
  end

  def edit
    @<%= singular_table_name %> = <%= orm_class.find(class_name, "params[:id]") %>
    build_admin_menu 1 # calls default admin menu. change admin menu id later
    switch_layout 'admin'
  end

  def create
    @<%= singular_table_name %> = <%= orm_class.build(class_name, "params[:#{singular_table_name}]") %>
    if @<%= orm_instance.save %>
      redirect_to @<%= singular_table_name %>, :notice => '<%= human_name %> was successfully created.'
    else
      render :action => "new", :warning => 'There was a problem saving the <%= human_name %>.'
      switch_layout 'admin'
    end
  end

  def update
    @<%= singular_table_name %> = <%= orm_class.find(class_name, "params[:id]") %>
    if @<%= orm_instance.update_attributes("params[:#{singular_table_name}]") %>
      redirect_to @<%= singular_table_name %>, :notice => '<%= human_name %> was successfully updated.'
    else
      render :action => "edit", :warning => 'There was a problem saving the <%= human_name %>.'
      switch_layout 'admin'
    end
  end

  def destroy
    @<%= singular_table_name %> = <%= orm_class.find(class_name, "params[:id]") %>
    @<%= orm_instance.destroy %>
    redirect_to <%= index_helper %>_path
  end
  
end
