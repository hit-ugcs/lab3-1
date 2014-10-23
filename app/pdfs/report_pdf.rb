class ReportPdf < Prawn::Document
  def initialize(students)
    super()
    @students = students
    header
    table_content
  end

  def header
    text "Gradesheet", size: 30, style: :bold, position: :middle
  end

  def table_content
    # This makes a call to product_rows and gets back an array of data that will populate the columns and rows of a table
    # I then included some styling to include a header and make its text bold. I made the row background colors alternate between grey and white
    # Then I set the table column widths
    

    table student_rows do
      row(0).font_style = :bold
      self.header = true
      self.row_colors = ['DDDDDD', 'FFFFFF']
      #self.column_widths = [40, 300, 200]
    end
  end
 
  def student_rows
    [['Student ID', 'Student Name(Chinese)', 'Nick Name(English)', 'Project(40%)',
      'Final(40%)', 'Lab(10%)', 'Class(10%)', 'Total']] + 
      @students.map do |student|
        student.totall = student.projectt + student.finall + student.labb + student.classs
      [student.idd, student.namee, student.nameee, student.projectt, student.finall, student.labb,
        student.classs, student.totall
      ]
    end
  end

end