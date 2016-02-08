
class <%= class_name %>Form < Paramount::Model

  def self.model_name
    ActiveModel::Name.new(self, nil, "<%= class_name %>")
  end

<% if class_mate %>
  <% class_mate.new.attributes.except(:id, :created_at, :updated_at).each do |attr,val| %>
  attribute :<%= attr -%>
  <% end %>
<% end %>


private

  def assign
    model.attributes= attributes #.except(:notify_me, :author_name, :geolocate, :etc)
    # assign_association
  end

  def assign_association
    # (model.author || model.build_author).name = author_name
  end


end