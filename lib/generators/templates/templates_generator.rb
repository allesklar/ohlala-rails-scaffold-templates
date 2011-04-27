class TemplatesGenerator < Rails::Generators::Base
  
  namespace "ohlala:templates"
  
  source_root File.expand_path('../templates', __FILE__)

  def install    
    copy_file "index.html.erb", "lib/templates/erb/scaffold/index.html.erb"
    copy_file "show.html.erb", "lib/templates/erb/scaffold/show.html.erb"
    copy_file "new.html.erb", "lib/templates/erb/scaffold/new.html.erb"
    copy_file "edit.html.erb", "lib/templates/erb/scaffold/edit.html.erb"
    copy_file "_form.html.erb", "lib/templates/erb/scaffold/_form.html.erb"
    copy_file "model.rb", "lib/templates/active_record/model/model.rb"
    copy_file "controller.rb", "lib/templates/rails/scaffold_controller/controller.rb"
    copy_file "unit_test.rb", "lib/templates/test_unit/scaffold/test_unit.rb"
    copy_file "functional_test.rb", "lib/templates/test_unit/scaffold/functional.rb"
  end
  
end
