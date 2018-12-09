defmodule BotoServer.Repo.Migrations.CreatePollChoices do
  use Ecto.Migration

  def change do
    create table(:poll_choices) do
      add :poll_id, references(:polls, on_delete: :delete_all)
      add :choice_id, references(:choices, on_delete: :delete_all)

      timestamps()
    end

    create index(:poll_choices, [:poll_id])
    create index(:poll_choices, [:choice_id])
    create unique_index(:poll_choices, [:poll_id, :choice_id])
  end
end
