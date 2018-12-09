defmodule BotoServer.Polls.Choice do
  use Ecto.Schema
  import Ecto.Changeset


  schema "choices" do
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(choice, attrs) do
    choice
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
