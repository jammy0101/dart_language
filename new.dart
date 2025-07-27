void main(){
var name = [1,2,3,4,5,6,7];
var name2 =  name.where((n) => n % 2 == 0);
var result = name2.reduce((a,b) => a + b);
print(result);
}