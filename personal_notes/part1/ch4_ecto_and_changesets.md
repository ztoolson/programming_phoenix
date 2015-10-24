Echo and Changesets
------------------
Applications presentation layer == views and templates which are controlled from the controller.

Goals of the Chapter: Start using exto as a real backend

Understanding Ecto
===================
Ecto has a feature called _changesets_ that holds all changes you want to perform on the database

What is a changeset?
Changesets let Ecto manage:
  - record changes
  - cast parameters
  - perform validations

Our user model will use a changeset to build a customized strategy for dealing with each specific kind of change, such as create, update ...
The changeset handles functionality similar to strong params (cast function) and validations in one method

The changeset lets Ecto decouple the update policy from the model

Why choose to use a Repo architecture?


Building a Form
---------------
we defined a protocol named Phoenix.HTML.Form- Data which separates the *interface* from the *implementation*. Ecto.Changeset imple- ments this protocol to convert its internal data to the structure required by Phoenix forms, all properly documented in the Phoenix.HTML.FormData contract.

What is a plug function versus just a normal function? (Guessing that is follows the plug protocol or something?)


Summary
-------
- Use Ecto to communicate with the database
- Configured new database and connected it to OTP, so that elixir could do the right thing in the event of a Pheonix or Ecto crash
- Created a model, complete with information about each neccessary field
- Database migrations are used to update schema
- Created and used changesets so Ecto could efficiently track and manage each change request by our application