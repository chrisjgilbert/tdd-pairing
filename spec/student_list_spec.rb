require './lib/student_list.rb'

describe StudentList do

  let(:studentlist) { StudentList.new }

  describe "#add_student" do
    it "can add a student's name to the student list" do
      studentlist.add("Chris")
      expect(studentlist.students).to eq ["Chris"]
    end

    it "can add multiple names to the student list" do
      studentlist.add("Chris")
      studentlist.add("Darci")
      studentlist.add("Makers")
      expect(studentlist.students).to eq ["Chris", "Darci", "Makers"]
    end

  end

  describe "#count_students" do
    it "can count how many students have been created" do
      studentlist.add("Chris")
      studentlist.add("Darci")
      studentlist.add("Makers")
      expect(studentlist.count_students).to eq 3
    end
  end

  describe "#clear_students" do
    it "can clear the student list" do
      studentlist.add("Chris")
      studentlist.add("Darci")
      studentlist.add("Makers")
      expect(studentlist.clear_students).to eq []
    end
  end

end
