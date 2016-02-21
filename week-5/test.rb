#student info:

students = "Adam Pinsky
Adam Pinsky
Rock Doves 2016
Student
Afaan Naqvi
Afaan Naqvi
Rock Doves 2016
Student
Alana Farkas
Alana Farkas
Rock Doves 2016
Student
Andrew Crowley
Andrew Crowley
Rock Doves 2016
Student
Andrew Vathanakamsang
Andrew Vathanakamsang
Rock Doves 2016
Student
Anna Lansfjord
Anna Lansfjord
Rock Doves 2016
Student
Benjamin Heidebrink
Benjamin Heidebrink
Rock Doves 2016
Student
Blair White
Blair White
Rock Doves 2016
Student
Brad Lindgren
Brad Lindgren
Rock Doves 2016
Student
Brian Donahue
Brian Donahue
Rock Doves 2016
Student
Brittney Braxton
Brittney Braxton
Rock Doves 2016
Student
Camila Crawford
Camila Crawford
Rock Doves 2016
Student
Charlie Lee
Charlie Lee
Rock Doves 2016
Student
Chunyu Ou
Chunyu Ou
Rock Doves 2016
Student
Daniel Homer
Daniel Homer
Rock Doves 2016
Student
Daniel Shapiro
Daniel Shapiro
Rock Doves 2016
Student
David Kaiser
David Kaiser
Rock Doves 2016
Student
David Ramirez
David Ramirez
Rock Doves 2016
Student
Daniel Deutsch
Daniel Deutsch
Rock Doves 2016
TA
Emily Osowski
Emily Osowski
Rock Doves 2016
Student
Emmet Garber
Emmet Garber
Rock Doves 2016
Student
Eric Gumerlock
Eric Gumerlock
Rock Doves 2016
Student
Greg Toprak
Gregory Toprak
Rock Doves 2016
Student
Hanna Taylor
Hanna Taylor
Rock Doves 2016
Student
Dave Hostios
Dave Hostios
Rock Doves 2016
Student
Jack Baginski
Jack Baginski
Rock Doves 2016
Student
Jaclyn Feminella
Jaclyn Feminella
Rock Doves 2016
Student
Jasmeet Chatrath
Jasmeet Chatrath
Rock Doves 2016
Student
Jason Allen
Jason Allen
Rock Doves 2016
Student
Jon Norstrom
Jon Norstrom
Rock Doves 2016
Student
jonathan nicolas
jonathan nicolas
Rock Doves 2016
Student
Joseph Yoo
Joseph Yoo
Rock Doves 2016
Student
Joshua Lugo
Joshua Lugo
Rock Doves 2016
Student
Joshua Wu
Joshua Wu
Rock Doves 2016
Student
Julia Giraldi
Julia Giraldi
Rock Doves 2016
Student
Kari Giberson
Kari Giberson
Rock Doves 2016
Student
Katherine Broner
Katherine Broner
Rock Doves 2016
Student
Kevin Fowle
Kevin Fowle
Rock Doves 2016
Student
Kevin Niu
Kevin Niu
Rock Doves 2016
Student
Kevin Perkins
Kevin Perkins
Rock Doves 2016
Student
Andrew Larson
Andrew Larson
Rock Doves 2016
Teacher
Leo Kukhar
Leo Kukhar
Rock Doves 2016
Student
Li-Lian Ku
Li-Lian Ku
Rock Doves 2016
Student
Erica Lloyd
Erica Lloyd
Rock Doves 2016
Student
Charlotte Manetta (Guide)
Charlotte Manetta
Rock Doves 2016
TA
Marita Deery
Marita Deery
Rock Doves 2016
Student
Michael Verthein
Michael Verthein
Rock Doves 2016
Student
Milorad Felbapov
Milorad Felbapov
Rock Doves 2016
Student
Brian Mosley
Brian Mosley
Rock Doves 2016
Student
Nick Russo
Nick Russo
Rock Doves 2016
Student
Noah Schutte
Noah Schutte
Rock Doves 2016
Student
Oscar Delgadillo
Oscar Delgadillo
Rock Doves 2016
Student
James Robinson
James Robinson
Rock Doves 2016
TA
Ryan Dempsey
Ryan Dempsey
Rock Doves 2016
Student
Ryan W.
Ryan Wilkins
Rock Doves 2016
Student
Sami Zhang
Sami Zhang
Rock Doves 2016
Student
Saralis Rivera
Saralis Rivera
Rock Doves 2016
Student
Sean Norton
Sean Norton
Rock Doves 2016
Student
Shyh Hwang
Shyh Hwang
Rock Doves 2016
Student
Sydney Rossman-Reich
Sydney Rossman-Reich
Rock Doves 2016
Student
Theo Paul
Theo Paul
Rock Doves 2016
Student
Tomasz Sok
Tomasz Sok
Rock Doves 2016
Student
Wesley El-Amin
Wesley El-Amin
Rock Doves 2016
Student"

student_list = students.split("\n").uniq
student_list.delete("Student")
student_list.delete("TA")
student_list.delete("Teacher")
student_list.delete("Rock Doves 2016")

puts student_list