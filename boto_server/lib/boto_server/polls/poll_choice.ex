defmodule BotoServer.Polls.PollChoice do
  use Ecto.Schema
  import Ecto.Changeset


  schema "poll_choices" do
    field :poll, :id
    field :choice, :id

    timestamps()
  end

  @doc false
  def changeset(poll_choice, attrs) do
    poll_choice
    |> cast(attrs, [])
    |> validate_required([])
  end
end
