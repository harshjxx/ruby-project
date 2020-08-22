# README

This README would normally document whatever steps are necessary to get the
// test code



<% if @student.errors.any? %>
<h2>the following errors prevented the student getting created </h2>
  <ul>
      <% @student.errors.full_messages.each do |msg| %>
      <li> <%= msg %></li>
      <% end %>
  </ul>
<% end %>


<ul>
  <% @student.errors.full_messages.each do |msg| %>

  <li><%= msg %> </li>

  <% end %>
</ul>


<%= form_for @student do |f|%>
    <p>
        <%= f.label :name %>
        <%= f.text_field :name%>
      </p>
    <p>
        <%= f.label :age %>
        <%= f.text_field :age %>
      </p>
    <p>
        <%= f.label :city %>
        <%= f.text_field :city %>
      </p>
    <p>
        <%= f.label :Address %>
        <%= f.text_field :Address %>
      </p>
      <p>
        <%= f.label :postal_code %>
        <%= f.text_field :postal_code %>
      </p>

    <p>
      <%= f.submit %>
    </p>
<% end %>
<%= link_to "back to Student lists", students_path %>