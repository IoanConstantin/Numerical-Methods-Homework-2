function r = IntervaleValProprii(d, s, m)
  %Intrari: d-> diagonala principala a matricei tridiagonale simetrice;
  %         s-> supradiagonala matricei tridiagonale simetrice;
  %         m-> limita pentru numarul de valori proprii.
  %Iesiri:  r-> un vector r=[r1 r2 ... r(m) r(m+1)] de dimensiune m+1.
   
  %mij-> mijlocul intervalului [r1,r(k+2)];
  %h-> lungimea intervalului [mij,r(k+2)];
  %pana cand numarul de valori proprii mai mic decat mij este egal cu k
  %sau lungimea intervalului [mij,r(k+2)] este 0 se repeta calculul mij.
  [limita_inf,limita_sup]=LimiteValProprii(d, s);
  r(1)=limita_inf;
  aux=limita_sup;
  for k=m:-1:1
     if(k!=m) mij=(r(k+2)+r(1))/2;
              h=(r(k+2)-r(1))/2;
     else     mij=(aux+r(1))/2;
              h=(aux-r(1))/2;
      endif
     do
     numvp=NrValProprii(d,s,mij);
     h=h/2;
     if(numvp<k) mij=mij+h;
     else
        if(numvp>k) mij=mij-h;
         endif
      endif
     until(h==0||numvp==k)
     r(k+1)=mij;
  endfor
endfunction