defmodule BotoServer.ParticipantsTest do
  use BotoServer.DataCase

  alias BotoServer.Participants

  describe "students" do
    alias BotoServer.Participants.Student

    @valid_attrs %{first_name: "some first_name", last_name: "some last_name", name: "some name", student_id: "some student_id"}
    @update_attrs %{first_name: "some updated first_name", last_name: "some updated last_name", name: "some updated name", student_id: "some updated student_id"}
    @invalid_attrs %{first_name: nil, last_name: nil, name: nil, student_id: nil}

    def student_fixture(attrs \\ %{}) do
      {:ok, student} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Participants.create_student()

      student
    end

    test "list_students/0 returns all students" do
      student = student_fixture()
      assert Participants.list_students() == [student]
    end

    test "get_student!/1 returns the student with given id" do
      student = student_fixture()
      assert Participants.get_student!(student.id) == student
    end

    test "create_student/1 with valid data creates a student" do
      assert {:ok, %Student{} = student} = Participants.create_student(@valid_attrs)
      assert student.first_name == "some first_name"
      assert student.last_name == "some last_name"
      assert student.name == "some name"
      assert student.student_id == "some student_id"
    end

    test "create_student/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Participants.create_student(@invalid_attrs)
    end

    test "update_student/2 with valid data updates the student" do
      student = student_fixture()
      assert {:ok, %Student{} = student} = Participants.update_student(student, @update_attrs)
      assert student.first_name == "some updated first_name"
      assert student.last_name == "some updated last_name"
      assert student.name == "some updated name"
      assert student.student_id == "some updated student_id"
    end

    test "update_student/2 with invalid data returns error changeset" do
      student = student_fixture()
      assert {:error, %Ecto.Changeset{}} = Participants.update_student(student, @invalid_attrs)
      assert student == Participants.get_student!(student.id)
    end

    test "delete_student/1 deletes the student" do
      student = student_fixture()
      assert {:ok, %Student{}} = Participants.delete_student(student)
      assert_raise Ecto.NoResultsError, fn -> Participants.get_student!(student.id) end
    end

    test "change_student/1 returns a student changeset" do
      student = student_fixture()
      assert %Ecto.Changeset{} = Participants.change_student(student)
    end
  end

  describe "courses" do
    alias BotoServer.Participants.Course

    @valid_attrs %{name: "some name"}
    @update_attrs %{name: "some updated name"}
    @invalid_attrs %{name: nil}

    def course_fixture(attrs \\ %{}) do
      {:ok, course} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Participants.create_course()

      course
    end

    test "list_courses/0 returns all courses" do
      course = course_fixture()
      assert Participants.list_courses() == [course]
    end

    test "get_course!/1 returns the course with given id" do
      course = course_fixture()
      assert Participants.get_course!(course.id) == course
    end

    test "create_course/1 with valid data creates a course" do
      assert {:ok, %Course{} = course} = Participants.create_course(@valid_attrs)
      assert course.name == "some name"
    end

    test "create_course/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Participants.create_course(@invalid_attrs)
    end

    test "update_course/2 with valid data updates the course" do
      course = course_fixture()
      assert {:ok, %Course{} = course} = Participants.update_course(course, @update_attrs)
      assert course.name == "some updated name"
    end

    test "update_course/2 with invalid data returns error changeset" do
      course = course_fixture()
      assert {:error, %Ecto.Changeset{}} = Participants.update_course(course, @invalid_attrs)
      assert course == Participants.get_course!(course.id)
    end

    test "delete_course/1 deletes the course" do
      course = course_fixture()
      assert {:ok, %Course{}} = Participants.delete_course(course)
      assert_raise Ecto.NoResultsError, fn -> Participants.get_course!(course.id) end
    end

    test "change_course/1 returns a course changeset" do
      course = course_fixture()
      assert %Ecto.Changeset{} = Participants.change_course(course)
    end
  end
end
