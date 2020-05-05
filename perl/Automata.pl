#!/usr/bin/env perl

use warnings;
use strict;

my $cont;
my $aceptado;
my $cadena = 'aabb';
my @car = split(undef, $cadena);
inicio();
if ($aceptado == 1) {
  print "Cadena aceptada\n"
}else{
  print "Cadena no valida\n";
}

sub inicio {
  $cont = 0;
  $aceptado = 1;
  q0();
}

sub q0 {
  print "En q0\n";
  if ($cont < scalar @car) {
    if ($car[$cont] eq 'a') {
      $cont++;
      q0();
    }elsif ($car[$cont] eq 'b') {
      $cont++;
      q1();
    }
  }
}

sub q1 {
  print"En q1\n";
  if ($cont < scalar @car) {
    if ($car[$cont] eq 'a') {
      $cont++;
      q1();
    } elsif($car[$cont] eq 'b'){
      $cont++;
      q2();
    }
  }
}

sub q2 {
  print"En q2\n";
  if ($cont < scalar @car) {
    if ($car[$cont] eq 'a') {
      $cont++;
      q2();
    }elsif($car[$cont] eq 'b'){
      $cont++;
      q3();
    }
  }
}

sub q3 {
  print "En q3 aceptacion\n";
  if ($cont < scalar @car) {
    if ($car[$cont] eq'a') {
      $cont++;
      q3();
    }elsif($car[$cont] eq 'b') {
      $cont++;
      qError();
    }
  }
}

sub qError {
  print "!!!PELIGRO ERROR!!!\n";
  $aceptado = 0;
  return $aceptado;
}
