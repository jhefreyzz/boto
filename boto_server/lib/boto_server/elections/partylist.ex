defmodule BotoServer.Elections.Partylist do
  use Ecto.Schema
  import Ecto.Changeset


  schema "partylists" do
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(partylist, attrs) do
    partylist
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
