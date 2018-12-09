defmodule BotoServerWeb.Router do
  use BotoServerWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", BotoServerWeb do
    pipe_through :api
  end
end
