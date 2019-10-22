Let 
     fun unturn(x) = turn( turn( turn(x) ) )
     fun pile (x,y) = unturn( sew( turn(y), turn(x) ) )
     val aa = pile(a, trun( turn(a) ) )
     val bb = pile( unturn(b), turn(b) )
     val p = sew(bb, aa)
     val q = sew(aa, bb)
in
      pile(p,q)
end
