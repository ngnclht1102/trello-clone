defmodule TrelloRewriteMe.Repo.Migrations.CreateCards do
  use Ecto.Migration

  def change do
    create table(:cards) do
      add :name, :string
      add :position, :integer, default: 0
      add :description, :string
      add :list_id, references(:lists, on_delete: :delete_all)

      timestamps
    end

    create unique_index(:cards, [:list_id])
  end
end
