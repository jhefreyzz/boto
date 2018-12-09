defmodule BotoServer.Repo.Migrations.AddUserIdToStudentsTable do
  use Ecto.Migration

  def change do
    alter table(:students) do
      add :user_id, references(:users, on_delete: :delete_all)
    end

    create index(:students, [:user_id])
  end
end
