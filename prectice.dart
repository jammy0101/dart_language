void main(){
Student student = Student();
Teacher teacher = Teacher();
student.age();
teacher.age();
student.name();
teacher.name();
}

class Student with Name,Age{
void rollNo(){}
}

class Teacher with Name, Age{
void subject(){}
}

mixin Name{
  void name(){
    print('Name');
  }
}

mixin Age{
void age(){
  print('Age');
}
}