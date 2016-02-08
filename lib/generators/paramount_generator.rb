class ParamountGenerator < Rails::Generators::NamedBase
  source_root File.expand_path("../templates", __FILE__)

  def create_model_file
    template "form.rb", File.join('app/forms', class_path, "#{file_name}_form.rb")
  end

  def create_controller
    # template "controller.rb", File.join('app/controllers', class_path, "#{file_name.pluralize}_controller.rb")
  end

  def create_view
    template "view.rb", File.join('app/views', class_path, "#{file_name.pluralize}", "_form.html.haml")
  end

  def class_mate
    classy = begin
       Object.const_get(class_name) ||
       Object.const_get( file_name.classify)
    rescue
    end
  end
end