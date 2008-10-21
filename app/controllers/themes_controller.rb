class ThemesController < ApplicationController
  
  def show
    @theme = params[:id] == 'default-page' ? Theme.new_default_page : Theme.new_default
    # right now, we have to do this to pick up the javascripts & stylesheets.  
    # The view helpers for these includes only work in ActionView
    render_to_string :action => "show.html.erb"
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @theme }
    end
  end
end
