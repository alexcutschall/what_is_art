module ApplicationHelper
  def present(model, presenter_class=nil)
    klass = presenter_class || "#{model.class}Presenter".constantize
    presenter = klass.new(model, self)
    yield(presenter) if block_given?
  end
end

# <%- @posts.each do |p| %>
#   <% present(p) do |post| %>
#     <tr>
#       <td><%= post.id %></td>
#       <td><%= post.title %></td>
#       <td><%= post.body %></td>
#       <td><%= post.publication_status %></td>
#     </tr>
#   <% end %>
# <% end %>
