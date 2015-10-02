Notes as I am reading

The Lay of the Land
===================

This of each web server as a function
  input: URL (request)
  output: response
^^ do you even functional bro?

Simple Functions
----------------

Somehow the browser establishes a connection.
connection |> phoenix

"In Phoenix, the connection is the whole universe of things we need to know about a user's request"
  -> It represented using an elixir struct


The API of _every layer of Phoenix_ looks like function calls with the first argument of those function calls the connection.

The Layers of Phoenix
---------------------

connection
|> endpoint
|> router
|> pipelines
|> controller

From the controller:
  connection
  |> controller
  |> common_services (implemented with plug)
  |> action

  Example controller:
  connection
  |> find_user
  |> view
  |> template

In Phoenix, whenver its possible, we try to limit side effects, those functions that touch and possible change the outside work, to the controller. This may require a change in thought about the model layer, since you will want to seperate code that acutally calls another web server or fetches code from a database, from the code that processes that data.

Process data through the model, read/write data through the controller.