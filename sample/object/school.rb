require ('launchy')

class School
  attr_accessor :name,
                :address,
                :number_of_students,
                :founding_years,
                :introduction_video_url,
                :introduction_statement
  def initialize(name, address, number_of_students, founding_years,
                introduction_video_url,introduction_statement)
    @name = name
    @address = address
    @number_of_students = number_of_students
    @founding_years = founding_years
    @introduction_video_url = introduction_video_url
    @introduction_statement = introduction_statement
  end
  def sample_instance_method
    puts("sampleだよ")
    puts("#{name}用のインスタンスだよ")
  end
  def open_video_url
    Launchy.open(@introduction_video_url)
  end
end
a_school = School.new("A学校","東京都渋谷区..",300,100,"https://diveintocode.jp/","A学校は自然豊かな...")
a_school.sample_instance_method
a_school.open_video_url
b_school = School.new("B学校","東京都新宿区..",500,30,"https://diveintocode.jp/","B学校は文武両立で...")
b_school.sample_instance_method
b_school.open_video_url
# puts(a_school.name)
# puts(a_school.address)
# puts(a_school.number_of_students)
# puts(a_school.founding_years)
# puts(a_school.introduction_video_url)
# puts(a_school.introduction_statement)
# puts(a_school.instance_variables)
# b_school = School.new("B学校","世田谷区")
# puts(b_school.name)
# puts(b_school.address)
# # a_school = School.new
# a_school.name = "A学校"
# a_school.address = "東京都渋谷区..."
# a_school.number_of_students = 300
# a_school.founding_years = 100
# a_school.introduction_video_url = "https://hoge.com"
# a_school.introduction_statement = "A学校は自然豊かな..."
# puts(a_school.name)
# b_school = School.new
# b_school.name = "B学校"
# b_school.address = "東京都新宿区.."
# b_school.number_of_students = 500
# b_school.founding_years = 30
# b_school.introduction_video_url = "https://foo.com"
# b_school.introduction_statement = "B学校は文武両立で..."
# puts(b_school.name)
#school.number_of_students = 300
#puts(school.number_of_students)
#school.address = "渋谷区"
# puts(school.address)
# school.year = "2000年"
# puts(school.year)
# school.url = "https://aaa"
# puts(school.url)
# school.introduce = "この学校は～"
# puts(school.introduce)
