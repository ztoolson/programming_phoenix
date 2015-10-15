Controllers, Views, and Templates
=================================

The Controller
--------------

How we want our controller that handles users to work:

  connection
  |> endpoint
  |> router
  |> browser_pipeline
  |> UserController

  Breaking down the user controller actions
  connection
  |> UserController.index
  |> UserView.render("index.html")

One of the UserControllers jobs is to read users from the database.
"But first, we're going to retrieve users from a hand-coded bucket called a _repository_. We're choosing this strategy because it helps us to separate the data itself from the ceremony surrounding how it is saved. Ecto follows a similar pattern."
^^ not sure about this, but I'm looking forward to the chapter's code

#### Working with Repositories
A repository is an API for holding things.

### Building a Controller
Need two routes:
  - UserController.index
  - UserController.show
How? -> add routes to web/router.ex (use `get` macro)
     -> Create a controller with the methods

Coding Views
------------
Templates are so fast in Phoenix because they are fuctions.

Html Helpers come from `user Rumbl.Web, :view` line which imports Rumbl.Router.Helpers.
the lib/web.ex, prefer import statements to defining your own functions.

Naming Conventions
------------------
Phoenix infers the name of the template to load from the name of the controller module

Nesting Templates
-----------------
###### pg51: A view in phoenix is just a module and templates are just functions. The view will extract the template from the filesystem and make it a function in the view itself.

TODO: Erlang Observer Research
IO.inspect returns the original value

- Understand plug a little bit more.

Question: How does the ruby community influence the elixir community?
What do you wish were in phoenix from ruby? And vice-versa
