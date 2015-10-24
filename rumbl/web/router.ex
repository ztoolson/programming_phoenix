defmodule Rumbl.Router do
  use Rumbl.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Rumbl do
    pipe_through :browser

    get "/", PageController, :index
    # Resources is a shorthand implementation for a common set of actions
    # This is a macro that defines these other macros (which the define the functions)
    #
    # get    "/users",         UserController, :index
    # get    "/users/:id/edit, UserController, :edit
    # get    "/users/new",     UserController, :new
    # get    "/users/:id",     UserController, :show
    # post   "/users",         UserController, :create
    # patch  "/users/:id",     UserController, :update
    # put    "/users/:id",     UserController, :update
    # delete "/users/:id",     UserController, :delete
    resources "/users", UserController
  end

  # Other scopes may use custom stacks.
  # scope "/api", Rumbl do
  #   pipe_through :api
  # end
end
