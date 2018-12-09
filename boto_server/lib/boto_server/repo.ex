defmodule BotoServer.Repo do
  use Ecto.Repo,
    otp_app: :boto_server,
    adapter: Ecto.Adapters.Postgres
end
