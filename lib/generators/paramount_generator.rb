class ParamountGenerator < Rails::Generators::NamedBase
  source_root File.expand_path("../templates", __FILE__)

  def create_model_file
    template "form.rb", File.join('app/forms', class_path, "#{file_name}_fomr.rb")
  end
end