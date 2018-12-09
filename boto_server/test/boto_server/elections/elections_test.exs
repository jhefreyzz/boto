defmodule BotoServer.ElectionsTest do
  use BotoServer.DataCase

  alias BotoServer.Elections

  describe "positions" do
    alias BotoServer.Elections.Position

    @valid_attrs %{name: "some name"}
    @update_attrs %{name: "some updated name"}
    @invalid_attrs %{name: nil}

    def position_fixture(attrs \\ %{}) do
      {:ok, position} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Elections.create_position()

      position
    end

    test "list_positions/0 returns all positions" do
      position = position_fixture()
      assert Elections.list_positions() == [position]
    end

    test "get_position!/1 returns the position with given id" do
      position = position_fixture()
      assert Elections.get_position!(position.id) == position
    end

    test "create_position/1 with valid data creates a position" do
      assert {:ok, %Position{} = position} = Elections.create_position(@valid_attrs)
      assert position.name == "some name"
    end

    test "create_position/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Elections.create_position(@invalid_attrs)
    end

    test "update_position/2 with valid data updates the position" do
      position = position_fixture()
      assert {:ok, %Position{} = position} = Elections.update_position(position, @update_attrs)
      assert position.name == "some updated name"
    end

    test "update_position/2 with invalid data returns error changeset" do
      position = position_fixture()
      assert {:error, %Ecto.Changeset{}} = Elections.update_position(position, @invalid_attrs)
      assert position == Elections.get_position!(position.id)
    end

    test "delete_position/1 deletes the position" do
      position = position_fixture()
      assert {:ok, %Position{}} = Elections.delete_position(position)
      assert_raise Ecto.NoResultsError, fn -> Elections.get_position!(position.id) end
    end

    test "change_position/1 returns a position changeset" do
      position = position_fixture()
      assert %Ecto.Changeset{} = Elections.change_position(position)
    end
  end

  describe "partylists" do
    alias BotoServer.Elections.Partylist

    @valid_attrs %{name: "some name"}
    @update_attrs %{name: "some updated name"}
    @invalid_attrs %{name: nil}

    def partylist_fixture(attrs \\ %{}) do
      {:ok, partylist} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Elections.create_partylist()

      partylist
    end

    test "list_partylists/0 returns all partylists" do
      partylist = partylist_fixture()
      assert Elections.list_partylists() == [partylist]
    end

    test "get_partylist!/1 returns the partylist with given id" do
      partylist = partylist_fixture()
      assert Elections.get_partylist!(partylist.id) == partylist
    end

    test "create_partylist/1 with valid data creates a partylist" do
      assert {:ok, %Partylist{} = partylist} = Elections.create_partylist(@valid_attrs)
      assert partylist.name == "some name"
    end

    test "create_partylist/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Elections.create_partylist(@invalid_attrs)
    end

    test "update_partylist/2 with valid data updates the partylist" do
      partylist = partylist_fixture()
      assert {:ok, %Partylist{} = partylist} = Elections.update_partylist(partylist, @update_attrs)
      assert partylist.name == "some updated name"
    end

    test "update_partylist/2 with invalid data returns error changeset" do
      partylist = partylist_fixture()
      assert {:error, %Ecto.Changeset{}} = Elections.update_partylist(partylist, @invalid_attrs)
      assert partylist == Elections.get_partylist!(partylist.id)
    end

    test "delete_partylist/1 deletes the partylist" do
      partylist = partylist_fixture()
      assert {:ok, %Partylist{}} = Elections.delete_partylist(partylist)
      assert_raise Ecto.NoResultsError, fn -> Elections.get_partylist!(partylist.id) end
    end

    test "change_partylist/1 returns a partylist changeset" do
      partylist = partylist_fixture()
      assert %Ecto.Changeset{} = Elections.change_partylist(partylist)
    end
  end

  describe "nominees" do
    alias BotoServer.Elections.Nominee

    @valid_attrs %{}
    @update_attrs %{}
    @invalid_attrs %{}

    def nominee_fixture(attrs \\ %{}) do
      {:ok, nominee} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Elections.create_nominee()

      nominee
    end

    test "list_nominees/0 returns all nominees" do
      nominee = nominee_fixture()
      assert Elections.list_nominees() == [nominee]
    end

    test "get_nominee!/1 returns the nominee with given id" do
      nominee = nominee_fixture()
      assert Elections.get_nominee!(nominee.id) == nominee
    end

    test "create_nominee/1 with valid data creates a nominee" do
      assert {:ok, %Nominee{} = nominee} = Elections.create_nominee(@valid_attrs)
    end

    test "create_nominee/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Elections.create_nominee(@invalid_attrs)
    end

    test "update_nominee/2 with valid data updates the nominee" do
      nominee = nominee_fixture()
      assert {:ok, %Nominee{} = nominee} = Elections.update_nominee(nominee, @update_attrs)
    end

    test "update_nominee/2 with invalid data returns error changeset" do
      nominee = nominee_fixture()
      assert {:error, %Ecto.Changeset{}} = Elections.update_nominee(nominee, @invalid_attrs)
      assert nominee == Elections.get_nominee!(nominee.id)
    end

    test "delete_nominee/1 deletes the nominee" do
      nominee = nominee_fixture()
      assert {:ok, %Nominee{}} = Elections.delete_nominee(nominee)
      assert_raise Ecto.NoResultsError, fn -> Elections.get_nominee!(nominee.id) end
    end

    test "change_nominee/1 returns a nominee changeset" do
      nominee = nominee_fixture()
      assert %Ecto.Changeset{} = Elections.change_nominee(nominee)
    end
  end
end
