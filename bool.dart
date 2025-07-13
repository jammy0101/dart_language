void main(){
  
  //it will check that it is true or false
bool isMarried = false;
print("${isMarried.runtimeType}");
print("$isMarried");


bool display(){
  if(isMarried == true){
print(isMarried);
}else{

  return isMarried;
}
return isMarried;
}

print(display());

}