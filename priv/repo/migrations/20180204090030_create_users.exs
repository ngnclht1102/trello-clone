defmodule TrelloRewriteMe.Repo.Migrations.Users do
  use Ecto.Migration

  def change do
      create table(:users) do
        add :first_name, :string, null, false
        add :last_name, :string, null, false
        add :email, :string, null, false
        add :password, :string, null, false
      end
  end
end