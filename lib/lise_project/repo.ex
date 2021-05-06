defmodule LiseProject.Repo do
  use Ecto.Repo,
    otp_app: :lise_project,
    adapter: Ecto.Adapters.Postgres
end
