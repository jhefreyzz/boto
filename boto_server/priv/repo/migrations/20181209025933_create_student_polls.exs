defmodule BotoServer.Repo.Migrations.CreateStudentPolls do
  use Ecto.Migration

  def change do
    create table(:student_polls) do
      add :nominee_id, references(:nominees, on_delete: :delete_all)
      add :student_id, references(:students, on_delete: :delete_all)

      timestamps()
    end

    create index(:student_polls, [:nominee_id])
    create index(:student_polls, [:student_id])
    create unique_index(:student_polls, [:nominee_id, :student_id])
  end
end
