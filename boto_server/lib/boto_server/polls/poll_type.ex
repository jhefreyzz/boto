defmodule BotoServer.Polls.PollType do
  use Ecto.Schema
  import Ecto.Changeset


  schema "poll_types" do
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(poll_type, attrs) do
    poll_type
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
