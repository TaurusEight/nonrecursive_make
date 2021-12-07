// Time-stamp: <2021-12-06 17:15:24 daniel>


// Header Files
//-----------------------------------------------------------------------------
#include "one/one.hh"  // one::output
#include "two/two.hh"  // two::output
#include "three/three.hh"  // three::output


// Entry into application
//-----------------------------------------------------------------------------
int main( ) {

  one::output();  // print 'one'
  two::output();  // print 'two'
  three::output();  // print 'three'

  return 0;

};  // end main
