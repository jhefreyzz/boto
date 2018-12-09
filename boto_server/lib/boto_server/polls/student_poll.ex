defmodule BotoServer.Polls.StudentPoll do
  use Ecto.Schema
  import Ecto.Changeset


  schema "student_polls" do
    field :nominee_id, :id
    field :student_id, :id

    timestamps()
  end

  @doc false
  def changeset(student_poll, attrs) do
    student_poll
    |> cast(attrs, [])
    |> validate_required([])
  end
end
