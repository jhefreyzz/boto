defmodule BotoServer.Polls.StudentChoice do
  use Ecto.Schema
  import Ecto.Changeset


  schema "student_choices" do
    field :poll_id, :id
    field :choice_id, :id
    field :student_id, :id

    timestamps()
  end

  @doc false
  def changeset(student_choice, attrs) do
    student_choice
    |> cast(attrs, [])
    |> validate_required([])
  end
end
