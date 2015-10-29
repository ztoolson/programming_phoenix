# Authenticating Users
- Real login forms, sessions, and password hashing

## Preparing for Authentication
- Need to hash the users pasword using Comeonin
To add a package to your application:

1. add hex package to mix.exs
2. add :comeonein to applications list so it is started with your app
  What is an OTP application? => a collection of modules that work together and can be managed as a whole.

## Managing Registration Changesets

The changesets make our code slightly more complex for trivial cases. Rather than marking the model with specific validations that all callers must use, we must specift independent changesets.

Any examples on how the individual changesets make the application simplier?

## Creating Users

The changeset has isulated our controller from the change policies encoded in our model while keeping the model free from side effects.

## The Anatomy of a Plug
2 kinds of plugs: module plugs and functions plugs.
  _Function Plugs_: a single function
  _Module Plugs_: a module that provides a single function and a few configuration details

Plugs work the same no matter the type. A module plug must have two functions: _init_ and _call_.
A typical plug transforms a connection?
_QUESTION_ => Any example of non typical plugs that do something other than transform a connection?

## Writing an Authentication Plug

Works in 2 stages:
1. Store the user_id in the session every time a new user registers or logs in
2. Check if there is a new user in the session and store it in conn.assigns for every incoming request, so it can be accessed inour controllers and views.
