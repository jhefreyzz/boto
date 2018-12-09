defmodule BotoServer.Polls.Poll do
  use Ecto.Schema
  import Ecto.Changeset


  schema "polls" do
    field :end, :naive_datetime
    field :name, :string
    field :start, :naive_datetime
    field :poll_type, :id

    timestamps()
  end

  @doc false
  def changeset(poll, attrs) do
    poll
    |> cast(attrs, [:name, :start, :end])
    |> validate_required([:name, :start, :end])
  end
end
