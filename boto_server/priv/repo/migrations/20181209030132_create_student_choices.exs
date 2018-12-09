defmodule BotoServer.Repo.Migrations.CreateStudentChoices do
  use Ecto.Migration

  def change do
    create table(:student_choices) do
      add :poll_id, references(:polls, on_delete: :delete_all)
      add :choice_id, references(:polls, on_delete: :delete_all)
      add :student_id, references(:students, on_delete: :delete_all)

      timestamps()
    end

    create index(:student_choices, [:poll_id])
    create index(:student_choices, [:choice_id])
    create index(:student_choices, [:student_id])
    create unique_index(:student_choices, [:poll_id, :choice_id, :student_id])
  end
end
