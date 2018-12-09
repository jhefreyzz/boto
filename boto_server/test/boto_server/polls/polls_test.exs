defmodule BotoServer.PollsTest do
  use BotoServer.DataCase

  alias BotoServer.Polls

  describe "poll_types" do
    alias BotoServer.Polls.PollType

    @valid_attrs %{name: "some name"}
    @update_attrs %{name: "some updated name"}
    @invalid_attrs %{name: nil}

    def poll_type_fixture(attrs \\ %{}) do
      {:ok, poll_type} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Polls.create_poll_type()

      poll_type
    end

    test "list_poll_types/0 returns all poll_types" do
      poll_type = poll_type_fixture()
      assert Polls.list_poll_types() == [poll_type]
    end

    test "get_poll_type!/1 returns the poll_type with given id" do
      poll_type = poll_type_fixture()
      assert Polls.get_poll_type!(poll_type.id) == poll_type
    end

    test "create_poll_type/1 with valid data creates a poll_type" do
      assert {:ok, %PollType{} = poll_type} = Polls.create_poll_type(@valid_attrs)
      assert poll_type.name == "some name"
    end

    test "create_poll_type/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Polls.create_poll_type(@invalid_attrs)
    end

    test "update_poll_type/2 with valid data updates the poll_type" do
      poll_type = poll_type_fixture()
      assert {:ok, %PollType{} = poll_type} = Polls.update_poll_type(poll_type, @update_attrs)
      assert poll_type.name == "some updated name"
    end

    test "update_poll_type/2 with invalid data returns error changeset" do
      poll_type = poll_type_fixture()
      assert {:error, %Ecto.Changeset{}} = Polls.update_poll_type(poll_type, @invalid_attrs)
      assert poll_type == Polls.get_poll_type!(poll_type.id)
    end

    test "delete_poll_type/1 deletes the poll_type" do
      poll_type = poll_type_fixture()
      assert {:ok, %PollType{}} = Polls.delete_poll_type(poll_type)
      assert_raise Ecto.NoResultsError, fn -> Polls.get_poll_type!(poll_type.id) end
    end

    test "change_poll_type/1 returns a poll_type changeset" do
      poll_type = poll_type_fixture()
      assert %Ecto.Changeset{} = Polls.change_poll_type(poll_type)
    end
  end

  describe "polls" do
    alias BotoServer.Polls.Poll

    @valid_attrs %{end: ~N[2010-04-17 14:00:00], name: "some name", start: ~N[2010-04-17 14:00:00]}
    @update_attrs %{end: ~N[2011-05-18 15:01:01], name: "some updated name", start: ~N[2011-05-18 15:01:01]}
    @invalid_attrs %{end: nil, name: nil, start: nil}

    def poll_fixture(attrs \\ %{}) do
      {:ok, poll} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Polls.create_poll()

      poll
    end

    test "list_polls/0 returns all polls" do
      poll = poll_fixture()
      assert Polls.list_polls() == [poll]
    end

    test "get_poll!/1 returns the poll with given id" do
      poll = poll_fixture()
      assert Polls.get_poll!(poll.id) == poll
    end

    test "create_poll/1 with valid data creates a poll" do
      assert {:ok, %Poll{} = poll} = Polls.create_poll(@valid_attrs)
      assert poll.end == ~N[2010-04-17 14:00:00]
      assert poll.name == "some name"
      assert poll.start == ~N[2010-04-17 14:00:00]
    end

    test "create_poll/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Polls.create_poll(@invalid_attrs)
    end

    test "update_poll/2 with valid data updates the poll" do
      poll = poll_fixture()
      assert {:ok, %Poll{} = poll} = Polls.update_poll(poll, @update_attrs)
      assert poll.end == ~N[2011-05-18 15:01:01]
      assert poll.name == "some updated name"
      assert poll.start == ~N[2011-05-18 15:01:01]
    end

    test "update_poll/2 with invalid data returns error changeset" do
      poll = poll_fixture()
      assert {:error, %Ecto.Changeset{}} = Polls.update_poll(poll, @invalid_attrs)
      assert poll == Polls.get_poll!(poll.id)
    end

    test "delete_poll/1 deletes the poll" do
      poll = poll_fixture()
      assert {:ok, %Poll{}} = Polls.delete_poll(poll)
      assert_raise Ecto.NoResultsError, fn -> Polls.get_poll!(poll.id) end
    end

    test "change_poll/1 returns a poll changeset" do
      poll = poll_fixture()
      assert %Ecto.Changeset{} = Polls.change_poll(poll)
    end
  end

  describe "choices" do
    alias BotoServer.Polls.Choice

    @valid_attrs %{name: "some name"}
    @update_attrs %{name: "some updated name"}
    @invalid_attrs %{name: nil}

    def choice_fixture(attrs \\ %{}) do
      {:ok, choice} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Polls.create_choice()

      choice
    end

    test "list_choices/0 returns all choices" do
      choice = choice_fixture()
      assert Polls.list_choices() == [choice]
    end

    test "get_choice!/1 returns the choice with given id" do
      choice = choice_fixture()
      assert Polls.get_choice!(choice.id) == choice
    end

    test "create_choice/1 with valid data creates a choice" do
      assert {:ok, %Choice{} = choice} = Polls.create_choice(@valid_attrs)
      assert choice.name == "some name"
    end

    test "create_choice/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Polls.create_choice(@invalid_attrs)
    end

    test "update_choice/2 with valid data updates the choice" do
      choice = choice_fixture()
      assert {:ok, %Choice{} = choice} = Polls.update_choice(choice, @update_attrs)
      assert choice.name == "some updated name"
    end

    test "update_choice/2 with invalid data returns error changeset" do
      choice = choice_fixture()
      assert {:error, %Ecto.Changeset{}} = Polls.update_choice(choice, @invalid_attrs)
      assert choice == Polls.get_choice!(choice.id)
    end

    test "delete_choice/1 deletes the choice" do
      choice = choice_fixture()
      assert {:ok, %Choice{}} = Polls.delete_choice(choice)
      assert_raise Ecto.NoResultsError, fn -> Polls.get_choice!(choice.id) end
    end

    test "change_choice/1 returns a choice changeset" do
      choice = choice_fixture()
      assert %Ecto.Changeset{} = Polls.change_choice(choice)
    end
  end

  describe "poll_choices" do
    alias BotoServer.Polls.PollChoice

    @valid_attrs %{}
    @update_attrs %{}
    @invalid_attrs %{}

    def poll_choice_fixture(attrs \\ %{}) do
      {:ok, poll_choice} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Polls.create_poll_choice()

      poll_choice
    end

    test "list_poll_choices/0 returns all poll_choices" do
      poll_choice = poll_choice_fixture()
      assert Polls.list_poll_choices() == [poll_choice]
    end

    test "get_poll_choice!/1 returns the poll_choice with given id" do
      poll_choice = poll_choice_fixture()
      assert Polls.get_poll_choice!(poll_choice.id) == poll_choice
    end

    test "create_poll_choice/1 with valid data creates a poll_choice" do
      assert {:ok, %PollChoice{} = poll_choice} = Polls.create_poll_choice(@valid_attrs)
    end

    test "create_poll_choice/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Polls.create_poll_choice(@invalid_attrs)
    end

    test "update_poll_choice/2 with valid data updates the poll_choice" do
      poll_choice = poll_choice_fixture()
      assert {:ok, %PollChoice{} = poll_choice} = Polls.update_poll_choice(poll_choice, @update_attrs)
    end

    test "update_poll_choice/2 with invalid data returns error changeset" do
      poll_choice = poll_choice_fixture()
      assert {:error, %Ecto.Changeset{}} = Polls.update_poll_choice(poll_choice, @invalid_attrs)
      assert poll_choice == Polls.get_poll_choice!(poll_choice.id)
    end

    test "delete_poll_choice/1 deletes the poll_choice" do
      poll_choice = poll_choice_fixture()
      assert {:ok, %PollChoice{}} = Polls.delete_poll_choice(poll_choice)
      assert_raise Ecto.NoResultsError, fn -> Polls.get_poll_choice!(poll_choice.id) end
    end

    test "change_poll_choice/1 returns a poll_choice changeset" do
      poll_choice = poll_choice_fixture()
      assert %Ecto.Changeset{} = Polls.change_poll_choice(poll_choice)
    end
  end

  describe "student_polls" do
    alias BotoServer.Polls.StudentPoll

    @valid_attrs %{}
    @update_attrs %{}
    @invalid_attrs %{}

    def student_poll_fixture(attrs \\ %{}) do
      {:ok, student_poll} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Polls.create_student_poll()

      student_poll
    end

    test "list_student_polls/0 returns all student_polls" do
      student_poll = student_poll_fixture()
      assert Polls.list_student_polls() == [student_poll]
    end

    test "get_student_poll!/1 returns the student_poll with given id" do
      student_poll = student_poll_fixture()
      assert Polls.get_student_poll!(student_poll.id) == student_poll
    end

    test "create_student_poll/1 with valid data creates a student_poll" do
      assert {:ok, %StudentPoll{} = student_poll} = Polls.create_student_poll(@valid_attrs)
    end

    test "create_student_poll/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Polls.create_student_poll(@invalid_attrs)
    end

    test "update_student_poll/2 with valid data updates the student_poll" do
      student_poll = student_poll_fixture()
      assert {:ok, %StudentPoll{} = student_poll} = Polls.update_student_poll(student_poll, @update_attrs)
    end

    test "update_student_poll/2 with invalid data returns error changeset" do
      student_poll = student_poll_fixture()
      assert {:error, %Ecto.Changeset{}} = Polls.update_student_poll(student_poll, @invalid_attrs)
      assert student_poll == Polls.get_student_poll!(student_poll.id)
    end

    test "delete_student_poll/1 deletes the student_poll" do
      student_poll = student_poll_fixture()
      assert {:ok, %StudentPoll{}} = Polls.delete_student_poll(student_poll)
      assert_raise Ecto.NoResultsError, fn -> Polls.get_student_poll!(student_poll.id) end
    end

    test "change_student_poll/1 returns a student_poll changeset" do
      student_poll = student_poll_fixture()
      assert %Ecto.Changeset{} = Polls.change_student_poll(student_poll)
    end
  end

  describe "student_choices" do
    alias BotoServer.Polls.StudentChoice

    @valid_attrs %{}
    @update_attrs %{}
    @invalid_attrs %{}

    def student_choice_fixture(attrs \\ %{}) do
      {:ok, student_choice} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Polls.create_student_choice()

      student_choice
    end

    test "list_student_choices/0 returns all student_choices" do
      student_choice = student_choice_fixture()
      assert Polls.list_student_choices() == [student_choice]
    end

    test "get_student_choice!/1 returns the student_choice with given id" do
      student_choice = student_choice_fixture()
      assert Polls.get_student_choice!(student_choice.id) == student_choice
    end

    test "create_student_choice/1 with valid data creates a student_choice" do
      assert {:ok, %StudentChoice{} = student_choice} = Polls.create_student_choice(@valid_attrs)
    end

    test "create_student_choice/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Polls.create_student_choice(@invalid_attrs)
    end

    test "update_student_choice/2 with valid data updates the student_choice" do
      student_choice = student_choice_fixture()
      assert {:ok, %StudentChoice{} = student_choice} = Polls.update_student_choice(student_choice, @update_attrs)
    end

    test "update_student_choice/2 with invalid data returns error changeset" do
      student_choice = student_choice_fixture()
      assert {:error, %Ecto.Changeset{}} = Polls.update_student_choice(student_choice, @invalid_attrs)
      assert student_choice == Polls.get_student_choice!(student_choice.id)
    end

    test "delete_student_choice/1 deletes the student_choice" do
      student_choice = student_choice_fixture()
      assert {:ok, %StudentChoice{}} = Polls.delete_student_choice(student_choice)
      assert_raise Ecto.NoResultsError, fn -> Polls.get_student_choice!(student_choice.id) end
    end

    test "change_student_choice/1 returns a student_choice changeset" do
      student_choice = student_choice_fixture()
      assert %Ecto.Changeset{} = Polls.change_student_choice(student_choice)
    end
  end

  describe "poll_comments" do
    alias BotoServer.Polls.PollComment

    @valid_attrs %{comment: "some comment"}
    @update_attrs %{comment: "some updated comment"}
    @invalid_attrs %{comment: nil}

    def poll_comment_fixture(attrs \\ %{}) do
      {:ok, poll_comment} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Polls.create_poll_comment()

      poll_comment
    end

    test "list_poll_comments/0 returns all poll_comments" do
      poll_comment = poll_comment_fixture()
      assert Polls.list_poll_comments() == [poll_comment]
    end

    test "get_poll_comment!/1 returns the poll_comment with given id" do
      poll_comment = poll_comment_fixture()
      assert Polls.get_poll_comment!(poll_comment.id) == poll_comment
    end

    test "create_poll_comment/1 with valid data creates a poll_comment" do
      assert {:ok, %PollComment{} = poll_comment} = Polls.create_poll_comment(@valid_attrs)
      assert poll_comment.comment == "some comment"
    end

    test "create_poll_comment/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Polls.create_poll_comment(@invalid_attrs)
    end

    test "update_poll_comment/2 with valid data updates the poll_comment" do
      poll_comment = poll_comment_fixture()
      assert {:ok, %PollComment{} = poll_comment} = Polls.update_poll_comment(poll_comment, @update_attrs)
      assert poll_comment.comment == "some updated comment"
    end

    test "update_poll_comment/2 with invalid data returns error changeset" do
      poll_comment = poll_comment_fixture()
      assert {:error, %Ecto.Changeset{}} = Polls.update_poll_comment(poll_comment, @invalid_attrs)
      assert poll_comment == Polls.get_poll_comment!(poll_comment.id)
    end

    test "delete_poll_comment/1 deletes the poll_comment" do
      poll_comment = poll_comment_fixture()
      assert {:ok, %PollComment{}} = Polls.delete_poll_comment(poll_comment)
      assert_raise Ecto.NoResultsError, fn -> Polls.get_poll_comment!(poll_comment.id) end
    end

    test "change_poll_comment/1 returns a poll_comment changeset" do
      poll_comment = poll_comment_fixture()
      assert %Ecto.Changeset{} = Polls.change_poll_comment(poll_comment)
    end
  end
end
