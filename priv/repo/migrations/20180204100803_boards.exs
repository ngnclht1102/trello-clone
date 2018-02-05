defmodule TrelloRewriteMe.Repo.Migrations.Users do
  use Ecto.Migration

  def change do
      create table(:boards) do
        add :name, :string
        add :slug, :string
        add :tags, {:array, :string}, default: []
        add :user_id, references(:users, on_delete: :delete_all)

        timestamps
      end

      create unique_index(:boards, [:user_id])
  end
end
