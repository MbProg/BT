//
//  19_simple_pipeline_2.c
//
//
//  Created by Zia Ul-Huda on 2/4/2013.
//
//

#include <stdio.h>
#include <vector>
//#include <string>
//#include <stringstream>
//#include <iostream>
//#include <sstream>




using namespace std;

int foo(int in, int d){
    return in * d;
}

int bar(int in, int d){
    return in + d;
}

int delta(int in, int d){
    return in -d;
}

int main( void)
{

    //string s = "abs bfd  ";
    //stringstream ss(s);
    //string tmp;
    //vector<string> out;
    //while (getline(ss, tmp, ' ')) {
        //out.emplace_back(tmp);
    //}

    //printf("%d", out.size());

    //int a,b,c,i;
    int i;
    int d = 20,a=22, b=44,c=90;
    for (i=0; i<100; i++) {
        a = foo(i, d);
        b = bar(a, d);
        c = delta(b, d);
        //printf("%d\n", c);
    }
    a= b;
    return 0;
}