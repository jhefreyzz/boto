defmodule BotoServer.Repo.Migrations.CreatePollComments do
  use Ecto.Migration

  def change do
    create table(:poll_comments) do
      add :comment, :string
      add :student_id, references(:students, on_delete: :delete_all)

      timestamps()
    end

    create index(:poll_comments, [:student_id])
  end
end
