defmodule BotoServer.Repo.Migrations.AddCourseIdToStudentsTable do
  use Ecto.Migration

  def change do
    alter table (:students) do
      add :course_id, references(:courses, on_delete: :delete_all)
    end

    create index(:students, [:course_id])
  end
end
