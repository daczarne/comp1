#### c1ADecimal ####

function d = c1ADecimal(b)
  # N�meros positivos
  if b(1) == 0
    d = b(1);
    for i = 2:length(b)
      d = d * 2 + b(i);
    endfor
  # N�meros negativos
  else if b(1) == 1
    # Invierte bits
    for i = 1:length(b)
      if b(i) == 0
        b(i) = 1;
      else if b(i) == 1
        b(i) = 0;
      endif
    endfor
    # Transforma el n�mero
    d = b(1);
    for i = 2:length(b)
      d = d * 2 + b(i);
    endfor
    d = -d;
  endif

endfunction