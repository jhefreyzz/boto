defmodule BotoServer.Elections do
  @moduledoc """
  The Election context.
  """

  import Ecto.Query, warn: false
  alias BotoServer.Repo

  alias BotoServer.Elections.Position

  @doc """
  Returns the list of positions.

  ## Examples

      iex> list_positions()
      [%Position{}, ...]

  """
  def list_positions do
    Repo.all(Position)
  end

  @doc """
  Gets a single position.

  Raises `Ecto.NoResultsError` if the Position does not exist.

  ## Examples

      iex> get_position!(123)
      %Position{}

      iex> get_position!(456)
      ** (Ecto.NoResultsError)

  """
  def get_position!(id), do: Repo.get!(Position, id)

  @doc """
  Creates a position.

  ## Examples

      iex> create_position(%{field: value})
      {:ok, %Position{}}

      iex> create_position(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_position(attrs \\ %{}) do
    %Position{}
    |> Position.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a position.

  ## Examples

      iex> update_position(position, %{field: new_value})
      {:ok, %Position{}}

      iex> update_position(position, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_position(%Position{} = position, attrs) do
    position
    |> Position.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Position.

  ## Examples

      iex> delete_position(position)
      {:ok, %Position{}}

      iex> delete_position(position)
      {:error, %Ecto.Changeset{}}

  """
  def delete_position(%Position{} = position) do
    Repo.delete(position)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking position changes.

  ## Examples

      iex> change_position(position)
      %Ecto.Changeset{source: %Position{}}

  """
  def change_position(%Position{} = position) do
    Position.changeset(position, %{})
  end

  alias BotoServer.Elections.Partylist

  @doc """
  Returns the list of partylists.

  ## Examples

      iex> list_partylists()
      [%Partylist{}, ...]

  """
  def list_partylists do
    Repo.all(Partylist)
  end

  @doc """
  Gets a single partylist.

  Raises `Ecto.NoResultsError` if the Partylist does not exist.

  ## Examples

      iex> get_partylist!(123)
      %Partylist{}

      iex> get_partylist!(456)
      ** (Ecto.NoResultsError)

  """
  def get_partylist!(id), do: Repo.get!(Partylist, id)

  @doc """
  Creates a partylist.

  ## Examples

      iex> create_partylist(%{field: value})
      {:ok, %Partylist{}}

      iex> create_partylist(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_partylist(attrs \\ %{}) do
    %Partylist{}
    |> Partylist.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a partylist.

  ## Examples

      iex> update_partylist(partylist, %{field: new_value})
      {:ok, %Partylist{}}

      iex> update_partylist(partylist, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_partylist(%Partylist{} = partylist, attrs) do
    partylist
    |> Partylist.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Partylist.

  ## Examples

      iex> delete_partylist(partylist)
      {:ok, %Partylist{}}

      iex> delete_partylist(partylist)
      {:error, %Ecto.Changeset{}}

  """
  def delete_partylist(%Partylist{} = partylist) do
    Repo.delete(partylist)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking partylist changes.

  ## Examples

      iex> change_partylist(partylist)
      %Ecto.Changeset{source: %Partylist{}}

  """
  def change_partylist(%Partylist{} = partylist) do
    Partylist.changeset(partylist, %{})
  end

  alias BotoServer.Elections.Nominee

  @doc """
  Returns the list of nominees.

  ## Examples

      iex> list_nominees()
      [%Nominee{}, ...]

  """
  def list_nominees do
    Repo.all(Nominee)
  end

  @doc """
  Gets a single nominee.

  Raises `Ecto.NoResultsError` if the Nominee does not exist.

  ## Examples

      iex> get_nominee!(123)
      %Nominee{}

      iex> get_nominee!(456)
      ** (Ecto.NoResultsError)

  """
  def get_nominee!(id), do: Repo.get!(Nominee, id)

  @doc """
  Creates a nominee.

  ## Examples

      iex> create_nominee(%{field: value})
      {:ok, %Nominee{}}

      iex> create_nominee(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_nominee(attrs \\ %{}) do
    %Nominee{}
    |> Nominee.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a nominee.

  ## Examples

      iex> update_nominee(nominee, %{field: new_value})
      {:ok, %Nominee{}}

      iex> update_nominee(nominee, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_nominee(%Nominee{} = nominee, attrs) do
    nominee
    |> Nominee.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Nominee.

  ## Examples

      iex> delete_nominee(nominee)
      {:ok, %Nominee{}}

      iex> delete_nominee(nominee)
      {:error, %Ecto.Changeset{}}

  """
  def delete_nominee(%Nominee{} = nominee) do
    Repo.delete(nominee)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking nominee changes.

  ## Examples

      iex> change_nominee(nominee)
      %Ecto.Changeset{source: %Nominee{}}

  """
  def change_nominee(%Nominee{} = nominee) do
    Nominee.changeset(nominee, %{})
  end
end
