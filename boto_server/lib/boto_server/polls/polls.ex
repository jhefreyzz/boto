defmodule BotoServer.Polls do
  @moduledoc """
  The Polls context.
  """

  import Ecto.Query, warn: false
  alias BotoServer.Repo

  alias BotoServer.Polls.PollType

  @doc """
  Returns the list of poll_types.

  ## Examples

      iex> list_poll_types()
      [%PollType{}, ...]

  """
  def list_poll_types do
    Repo.all(PollType)
  end

  @doc """
  Gets a single poll_type.

  Raises `Ecto.NoResultsError` if the Poll type does not exist.

  ## Examples

      iex> get_poll_type!(123)
      %PollType{}

      iex> get_poll_type!(456)
      ** (Ecto.NoResultsError)

  """
  def get_poll_type!(id), do: Repo.get!(PollType, id)

  @doc """
  Creates a poll_type.

  ## Examples

      iex> create_poll_type(%{field: value})
      {:ok, %PollType{}}

      iex> create_poll_type(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_poll_type(attrs \\ %{}) do
    %PollType{}
    |> PollType.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a poll_type.

  ## Examples

      iex> update_poll_type(poll_type, %{field: new_value})
      {:ok, %PollType{}}

      iex> update_poll_type(poll_type, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_poll_type(%PollType{} = poll_type, attrs) do
    poll_type
    |> PollType.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a PollType.

  ## Examples

      iex> delete_poll_type(poll_type)
      {:ok, %PollType{}}

      iex> delete_poll_type(poll_type)
      {:error, %Ecto.Changeset{}}

  """
  def delete_poll_type(%PollType{} = poll_type) do
    Repo.delete(poll_type)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking poll_type changes.

  ## Examples

      iex> change_poll_type(poll_type)
      %Ecto.Changeset{source: %PollType{}}

  """
  def change_poll_type(%PollType{} = poll_type) do
    PollType.changeset(poll_type, %{})
  end

  alias BotoServer.Polls.Poll

  @doc """
  Returns the list of polls.

  ## Examples

      iex> list_polls()
      [%Poll{}, ...]

  """
  def list_polls do
    Repo.all(Poll)
  end

  @doc """
  Gets a single poll.

  Raises `Ecto.NoResultsError` if the Poll does not exist.

  ## Examples

      iex> get_poll!(123)
      %Poll{}

      iex> get_poll!(456)
      ** (Ecto.NoResultsError)

  """
  def get_poll!(id), do: Repo.get!(Poll, id)

  @doc """
  Creates a poll.

  ## Examples

      iex> create_poll(%{field: value})
      {:ok, %Poll{}}

      iex> create_poll(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_poll(attrs \\ %{}) do
    %Poll{}
    |> Poll.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a poll.

  ## Examples

      iex> update_poll(poll, %{field: new_value})
      {:ok, %Poll{}}

      iex> update_poll(poll, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_poll(%Poll{} = poll, attrs) do
    poll
    |> Poll.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Poll.

  ## Examples

      iex> delete_poll(poll)
      {:ok, %Poll{}}

      iex> delete_poll(poll)
      {:error, %Ecto.Changeset{}}

  """
  def delete_poll(%Poll{} = poll) do
    Repo.delete(poll)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking poll changes.

  ## Examples

      iex> change_poll(poll)
      %Ecto.Changeset{source: %Poll{}}

  """
  def change_poll(%Poll{} = poll) do
    Poll.changeset(poll, %{})
  end

  alias BotoServer.Polls.Choice

  @doc """
  Returns the list of choices.

  ## Examples

      iex> list_choices()
      [%Choice{}, ...]

  """
  def list_choices do
    Repo.all(Choice)
  end

  @doc """
  Gets a single choice.

  Raises `Ecto.NoResultsError` if the Choice does not exist.

  ## Examples

      iex> get_choice!(123)
      %Choice{}

      iex> get_choice!(456)
      ** (Ecto.NoResultsError)

  """
  def get_choice!(id), do: Repo.get!(Choice, id)

  @doc """
  Creates a choice.

  ## Examples

      iex> create_choice(%{field: value})
      {:ok, %Choice{}}

      iex> create_choice(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_choice(attrs \\ %{}) do
    %Choice{}
    |> Choice.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a choice.

  ## Examples

      iex> update_choice(choice, %{field: new_value})
      {:ok, %Choice{}}

      iex> update_choice(choice, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_choice(%Choice{} = choice, attrs) do
    choice
    |> Choice.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Choice.

  ## Examples

      iex> delete_choice(choice)
      {:ok, %Choice{}}

      iex> delete_choice(choice)
      {:error, %Ecto.Changeset{}}

  """
  def delete_choice(%Choice{} = choice) do
    Repo.delete(choice)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking choice changes.

  ## Examples

      iex> change_choice(choice)
      %Ecto.Changeset{source: %Choice{}}

  """
  def change_choice(%Choice{} = choice) do
    Choice.changeset(choice, %{})
  end

  alias BotoServer.Polls.PollChoice

  @doc """
  Returns the list of poll_choices.

  ## Examples

      iex> list_poll_choices()
      [%PollChoice{}, ...]

  """
  def list_poll_choices do
    Repo.all(PollChoice)
  end

  @doc """
  Gets a single poll_choice.

  Raises `Ecto.NoResultsError` if the Poll choice does not exist.

  ## Examples

      iex> get_poll_choice!(123)
      %PollChoice{}

      iex> get_poll_choice!(456)
      ** (Ecto.NoResultsError)

  """
  def get_poll_choice!(id), do: Repo.get!(PollChoice, id)

  @doc """
  Creates a poll_choice.

  ## Examples

      iex> create_poll_choice(%{field: value})
      {:ok, %PollChoice{}}

      iex> create_poll_choice(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_poll_choice(attrs \\ %{}) do
    %PollChoice{}
    |> PollChoice.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a poll_choice.

  ## Examples

      iex> update_poll_choice(poll_choice, %{field: new_value})
      {:ok, %PollChoice{}}

      iex> update_poll_choice(poll_choice, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_poll_choice(%PollChoice{} = poll_choice, attrs) do
    poll_choice
    |> PollChoice.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a PollChoice.

  ## Examples

      iex> delete_poll_choice(poll_choice)
      {:ok, %PollChoice{}}

      iex> delete_poll_choice(poll_choice)
      {:error, %Ecto.Changeset{}}

  """
  def delete_poll_choice(%PollChoice{} = poll_choice) do
    Repo.delete(poll_choice)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking poll_choice changes.

  ## Examples

      iex> change_poll_choice(poll_choice)
      %Ecto.Changeset{source: %PollChoice{}}

  """
  def change_poll_choice(%PollChoice{} = poll_choice) do
    PollChoice.changeset(poll_choice, %{})
  end

  alias BotoServer.Polls.StudentPoll

  @doc """
  Returns the list of student_polls.

  ## Examples

      iex> list_student_polls()
      [%StudentPoll{}, ...]

  """
  def list_student_polls do
    Repo.all(StudentPoll)
  end

  @doc """
  Gets a single student_poll.

  Raises `Ecto.NoResultsError` if the Student poll does not exist.

  ## Examples

      iex> get_student_poll!(123)
      %StudentPoll{}

      iex> get_student_poll!(456)
      ** (Ecto.NoResultsError)

  """
  def get_student_poll!(id), do: Repo.get!(StudentPoll, id)

  @doc """
  Creates a student_poll.

  ## Examples

      iex> create_student_poll(%{field: value})
      {:ok, %StudentPoll{}}

      iex> create_student_poll(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_student_poll(attrs \\ %{}) do
    %StudentPoll{}
    |> StudentPoll.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a student_poll.

  ## Examples

      iex> update_student_poll(student_poll, %{field: new_value})
      {:ok, %StudentPoll{}}

      iex> update_student_poll(student_poll, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_student_poll(%StudentPoll{} = student_poll, attrs) do
    student_poll
    |> StudentPoll.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a StudentPoll.

  ## Examples

      iex> delete_student_poll(student_poll)
      {:ok, %StudentPoll{}}

      iex> delete_student_poll(student_poll)
      {:error, %Ecto.Changeset{}}

  """
  def delete_student_poll(%StudentPoll{} = student_poll) do
    Repo.delete(student_poll)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking student_poll changes.

  ## Examples

      iex> change_student_poll(student_poll)
      %Ecto.Changeset{source: %StudentPoll{}}

  """
  def change_student_poll(%StudentPoll{} = student_poll) do
    StudentPoll.changeset(student_poll, %{})
  end

  alias BotoServer.Polls.StudentChoice

  @doc """
  Returns the list of student_choices.

  ## Examples

      iex> list_student_choices()
      [%StudentChoice{}, ...]

  """
  def list_student_choices do
    Repo.all(StudentChoice)
  end

  @doc """
  Gets a single student_choice.

  Raises `Ecto.NoResultsError` if the Student choice does not exist.

  ## Examples

      iex> get_student_choice!(123)
      %StudentChoice{}

      iex> get_student_choice!(456)
      ** (Ecto.NoResultsError)

  """
  def get_student_choice!(id), do: Repo.get!(StudentChoice, id)

  @doc """
  Creates a student_choice.

  ## Examples

      iex> create_student_choice(%{field: value})
      {:ok, %StudentChoice{}}

      iex> create_student_choice(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_student_choice(attrs \\ %{}) do
    %StudentChoice{}
    |> StudentChoice.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a student_choice.

  ## Examples

      iex> update_student_choice(student_choice, %{field: new_value})
      {:ok, %StudentChoice{}}

      iex> update_student_choice(student_choice, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_student_choice(%StudentChoice{} = student_choice, attrs) do
    student_choice
    |> StudentChoice.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a StudentChoice.

  ## Examples

      iex> delete_student_choice(student_choice)
      {:ok, %StudentChoice{}}

      iex> delete_student_choice(student_choice)
      {:error, %Ecto.Changeset{}}

  """
  def delete_student_choice(%StudentChoice{} = student_choice) do
    Repo.delete(student_choice)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking student_choice changes.

  ## Examples

      iex> change_student_choice(student_choice)
      %Ecto.Changeset{source: %StudentChoice{}}

  """
  def change_student_choice(%StudentChoice{} = student_choice) do
    StudentChoice.changeset(student_choice, %{})
  end

  alias BotoServer.Polls.PollComment

  @doc """
  Returns the list of poll_comments.

  ## Examples

      iex> list_poll_comments()
      [%PollComment{}, ...]

  """
  def list_poll_comments do
    Repo.all(PollComment)
  end

  @doc """
  Gets a single poll_comment.

  Raises `Ecto.NoResultsError` if the Poll comment does not exist.

  ## Examples

      iex> get_poll_comment!(123)
      %PollComment{}

      iex> get_poll_comment!(456)
      ** (Ecto.NoResultsError)

  """
  def get_poll_comment!(id), do: Repo.get!(PollComment, id)

  @doc """
  Creates a poll_comment.

  ## Examples

      iex> create_poll_comment(%{field: value})
      {:ok, %PollComment{}}

      iex> create_poll_comment(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_poll_comment(attrs \\ %{}) do
    %PollComment{}
    |> PollComment.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a poll_comment.

  ## Examples

      iex> update_poll_comment(poll_comment, %{field: new_value})
      {:ok, %PollComment{}}

      iex> update_poll_comment(poll_comment, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_poll_comment(%PollComment{} = poll_comment, attrs) do
    poll_comment
    |> PollComment.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a PollComment.

  ## Examples

      iex> delete_poll_comment(poll_comment)
      {:ok, %PollComment{}}

      iex> delete_poll_comment(poll_comment)
      {:error, %Ecto.Changeset{}}

  """
  def delete_poll_comment(%PollComment{} = poll_comment) do
    Repo.delete(poll_comment)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking poll_comment changes.

  ## Examples

      iex> change_poll_comment(poll_comment)
      %Ecto.Changeset{source: %PollComment{}}

  """
  def change_poll_comment(%PollComment{} = poll_comment) do
    PollComment.changeset(poll_comment, %{})
  end
end
