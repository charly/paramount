= simple_form_for @<%= file_name %>.form, url: "/admin/<%= file_name.pluralize %>" do |f|
<% if class_mate %>
  <% class_mate.new.attributes.except("id", "created_at", "updated_at").each do |attr,val| %>
  = f.input :<%= attr -%>
  <% end %>
<% end %>
  %br
  = f.button :submit
