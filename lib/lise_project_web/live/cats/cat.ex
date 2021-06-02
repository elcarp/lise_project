defmodule LiseProjectWeb.Cat do
    defstruct [:id, :name, :age, :gender, :breed]
    def new(%{name: name, age: age, gender: gender, breed: breed}) do
      %__MODULE__{id: UUID.uuid4(), name: name, age: age, gender: gender, breed: breed}
    end
  end