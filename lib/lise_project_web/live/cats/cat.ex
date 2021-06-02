defmodule LiseProjectWeb.CatLive do
    use LiseProjectWeb, :live_view
    @impl true
    def mount(_params, _session, socket) do
      {:ok, assign(socket, query: "", results: %{})}
    end
  
    defstruct [:id, :name, :age, :gender, :breed]

    def new(%{name: name, age: age, gender: gender, breed: breed}) do
      %__MODULE__{id: UUID.uuid4(), name: name, age: age, gender: gender, breed: breed}
    end
    
  end