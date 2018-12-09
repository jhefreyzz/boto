defmodule BotoServer.Elections.Nominee do
  use Ecto.Schema
  import Ecto.Changeset


  schema "nominees" do
    field :student_id, :id
    field :poll_id, :id
    field :partylist_id, :id
    field :position_id, :id

    timestamps()
  end

  @doc false
  def changeset(nominee, attrs) do
    nominee
    |> cast(attrs, [])
    |> validate_required([])
  end
end
