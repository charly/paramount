module Paramount
  class Model
    include ActiveModel::Model
    include Virtus.model

    attr_accessor :model

    # def self.model_name
    #   raise "self.model_name needs to be defined"
    # end

    def self.model_class
      @klass ||= model_name.name.constantize
    end

    # This 'factory' meant for show/edit takes no params and
    # uses the model attributes to seed the virtus attributes
    # usage in controller : BookParam.find(params[:id])
    def self.find(id)
      model = model_class.find(id)
      new(model.attributes, model)
    end

    def initialize(params = nil, model = nil)
      @model= model
      params ||= model.attributes
      super(params)
    end

    def id
      model.id
    end

    def save
      assign
      model.save if valid?
    end
    alias update save

    def path
      [:edit, model]
    end

    def persisted?
      model.new_record? ? false : true
    end

  end
end
