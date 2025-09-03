void main(){

Map<String,double>  number = {
'math' : 23.4,
'science' : 22.3,
'urdu' : 7.0,
'web eng' : 76.0,
};


number.removeWhere((keys,value) =>  value < 89);

print(number);

}