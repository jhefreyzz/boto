defmodule BotoServer.Repo.Migrations.CreatePolls do
  use Ecto.Migration

  def change do
    create table(:polls) do
      add :name, :string, null: false, size: 100
      add :start, :naive_datetime
      add :end, :naive_datetime
      add :poll_type_id, references(:poll_types, on_delete: :delete_all)

      timestamps()
    end

    create index(:polls, [:poll_type_id])
  end
end
