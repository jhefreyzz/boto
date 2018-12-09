defmodule BotoServer.Polls.PollComment do
  use Ecto.Schema
  import Ecto.Changeset


  schema "poll_comments" do
    field :comment, :string
    field :student_id, :id

    timestamps()
  end

  @doc false
  def changeset(poll_comment, attrs) do
    poll_comment
    |> cast(attrs, [:comment])
    |> validate_required([:comment])
  end
end
