void main(){
  final mySquare=new Square(side:-10);
  print(mySquare);
}

class Square{
  double _side; //side*side
  
  Square({required double side})
    
    :assert(side>=0,'Value must be greater than 0'),
    _side=side;

  double calculateArea(){
    return _side*_side;
  }
}