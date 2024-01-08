# maths_tricks

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

import 'dart:core';
import 'dart:math';

void main(){
Area squ = Area();
print(squ.square(2) );
}

class Area{

  double square(double a){
      double A=a*a;
    return A;
  }

  double rightangle(double w, double l){
     double A=w*l;
  return A;   
  }

  double trapezium(double a, double b, double h){
        double A=0.5*(a+b)*h;
        return A;
  }

  double parallelogram(double b, double h){
    double A =b*h;
    return A;
  }

  double triangle1(double b, double h){
    double A= 0.5*b*h;
    return A;
  }

  double triangle2(double a, double b, double c){
    double S=0.5*(a+b+c);
    double A=S*(S-a)*(S-b)*(S-c);
    return sqrt(A);
  }
  double circle(double r){
    double S=22/7;
     double A= S*r*r;
     return A;
  }

   double sector(double r, double x){
    double S=22/7 * (x/360);
     double A= S*r*r;
     return A;
  }

}