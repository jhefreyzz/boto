defmodule BotoServer.Repo.Migrations.CreateStudents do
  use Ecto.Migration

  def change do
    create table(:students) do
      add :first_name, :string, null: false, size: 40
      add :last_name, :string, null: false, size: 40
      add :name, :string, null: false
      add :student_id, :string, null: false

      timestamps()
    end

    create unique_index(:students, [:student_id])
  end
end
