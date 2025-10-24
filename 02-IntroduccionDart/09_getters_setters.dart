void main(){
  final mySquare=new Square(side:10);
  mySquare.side=5;
  print('area ${mySquare.area}');
}

class Square{
  double _side; //side*side
  Square({required double side})
    :_side=side;
  set side(double value){
    print('setting new value $value');
    if(value<=0) throw 'Value must be greater than 0';
    _side=value;
  }
  
  double get area{
    return _side*_side;
  }
    double calculateArea(){
    return _side*_side;
  }
  
}