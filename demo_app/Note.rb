Controller -

below is the command to create the Controller
rails g/generate controller controller_name(s) index new edit show

whatever comes next to controller name those are the template names, It
mean there is not other way to create templates.
By default rails handles 7 routes out of 4 templates as explained

route_name  action  templates  template_name
index       YES       YES       views/controller_name/index.html.erb
new         YES       YES       views/controller_name/new.html.erb
create      YES       NO
edit        YES       YES       views/controller_name/edit.html.erb
update      YES       NO
show        YES       YES       views/controller_name/show.html.erb
delete      YES       NO










[localhost:3000/users/4/edit]

Verb : GET
Uri :  /users/4/edit
This matches with below
'edit_user GET    /users/:id/edit(.:format) users#edit'
So now its the responsibilty of users controller edit action to render edit
page .

[In the browser content of edit page will appear]

As soon as you hit on UPDATE button then the
Verb : PATCH
Uri : /users/4
This matches with below
'PATCH  /users/:id(.:format)      users#update'
So now its the responsibilty of users controller update action to save the data into DB
and redirect to any page of your choice.
page .
