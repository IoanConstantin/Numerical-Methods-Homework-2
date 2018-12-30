function numvp = NrValProprii(d,s,val_lambda)
  %Intrari: d-> diagonala principala a matricei tridiagonale simetrice;
  %         s-> supradiagonala matricei tridiagonale simetrice;
  %         val_lambda-> valoarea pentru lambda.
  %Iesire:  numvp-> numarul de valori proprii mai mici decat val_lambda.
  
  %Se parcurge sirul P returnat de functia ValoriPolinoame si se calculeaza
  %numarul radacinilor ecuatiei Pn(val_lambda)=0, cel care este egal cu
  %numarul schimbarilor de semn ale elementelor consecutive din sirul P,
  %indiferent daca exista si elemente cu valoarea 0 intercalate intre cele
  %cu semne opuse.
  n=length(d);
  p=ValoriPolinoame(d,s,val_lambda);
  numvp=0;
  for i=1:n+1
     if(i!=(n+1)) if(p(i)<0&&p(i+1)>0) numvp=numvp+1;
                    endif
                  if(p(i)>0&&p(i+1)<0) numvp=numvp+1;
                    endif
                  if(p(i)==0&&p(i+1)<0&&p(i-1)>0) numvp=numvp+1;
                    endif
                  if(p(i)==0&&p(i+1)>0&&p(i-1)<0) numvp=numvp+1;
                    endif
     endif
  endfor
endfunction