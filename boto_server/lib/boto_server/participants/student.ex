defmodule BotoServer.Participants.Student do
  use Ecto.Schema
  import Ecto.Changeset


  schema "students" do
    field :first_name, :string
    field :last_name, :string
    field :name, :string
    field :student_id, :string

    timestamps()
  end

  @doc false
  def changeset(student, attrs) do
    student
    |> cast(attrs, [:first_name, :last_name, :name, :student_id])
    |> validate_required([:first_name, :last_name, :name, :student_id])
    |> unique_constraint(:student_id)
  end
end
