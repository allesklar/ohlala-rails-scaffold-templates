class TemplatesGenerator < Rails::Generators::Base
  
  source_root File.expand_path('../templates', __FILE__)

  def install    
    copy_file "index.html.erb", "lib/templates/erb/scaffold/index.html.erb"
    copy_file "show.html.erb", "lib/templates/erb/scaffold/show.html.erb"
    copy_file "new.html.erb", "lib/templates/erb/scaffold/new.html.erb"
    copy_file "edit.html.erb", "lib/templates/erb/scaffold/edit.html.erb"
    copy_file "_form.html.erb", "lib/templates/erb/scaffold/_form.html.erb"
  end
  
end
