module Paramount
  module ActiveRecord
    module ClassMethods
      #
      # Configure model
      # Eg:
      #   class Book < AR
      #     paramount
      #     paramount :form_admin, Admin::ScanForm
      #   end
      #
      def paramount
        include InstanceMethods
      end
    end

    module InstanceMethods
      def form(params = nil)
        @form ||= "#{self.class}Form".constantize.new(params, self)
      end

    end
  end
end

ActiveRecord::Base.extend Paramount::ActiveRecord::ClassMethods