let fun unturn(x) = turn( turn( turn(x)))
     fun pile(x,y) = unturn( sew( turn(y) ,turn(x) ) )
in  pile (unturn(b), turn(b))
end
