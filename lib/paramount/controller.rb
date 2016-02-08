module Paramount
  module Controller
    def index
      collection
    end

    def show
      resource
    end

    def new
    end

    def edit
      resource
    end

    def create
      new

      if new.form(resource_params).save
        redirection(action: 'created')
      else
        render :new
      end
    end

    def update
      if resource.form(resource_params).save
        redirection(action: 'updated')
      else
        render :edit
      end
    end

    def destroy
      resource.destroy
      redirect_to polymorphic_path(resource.class), notice: 'Successfully destroyed'
    end
  end
end