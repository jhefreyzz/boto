defmodule BotoServer.Repo.Migrations.CreateNominees do
  use Ecto.Migration

  def change do
    create table(:nominees) do
      add :student_id, references(:students, on_delete: :delete_all)
      add :poll_id, references(:polls, on_delete: :delete_all)
      add :partylist_id, references(:partylists, on_delete: :delete_all)
      add :position_id, references(:positions, on_delete: :delete_all)

      timestamps()
    end

    create index(:nominees, [:student_id])
    create index(:nominees, [:poll_id])
    create index(:nominees, [:partylist_id])
    create index(:nominees, [:position_id])
    create unique_index(:nominees, [:student_id, :poll_id])
  end
end
