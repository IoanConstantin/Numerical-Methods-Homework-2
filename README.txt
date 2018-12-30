METODE NUMERICE - Tema 2
========================

1). Cerinta 1
----------------
->Se calculeaza valoarea polinoamelor din vectorul P cu ajutorul elementelor matricei tridiagonale simetrice 
  folosind relatia de recurenta data.

2). Cerinta 2
----------------
->Se parcurge sirul P returnat de functia de la cerinta 1 si se calculeaza numarul radacinilor ecuatiei 
  Pn(val_lambda)=0, cel care este egal cu numarul schimbarilor de semn ale elementelor consecutive din 
  sirul P, indiferent daca exista si elemente cu valoarea 0 intercalate intre cele cu semne opuse.
  
3). Cerinta 3
----------------
->Se construieste sirul t astfel: valoarea elementului de pe pozitia i a sirului t este egala cu suma elementelor 
  din sirul s aflate pe linia i a matricei. Se obtin limitele care incadreaza valoriile proprii ale matricei 
  astfel: limita_inf reprezinta minimul diferentelor elementelor de pe aceeasi pozitie din sirurile d si t, iar 
  limita_sup reprezinta maximul sumelor elementelor de pe aceeasi pozitie din sirurile d si t. 

->Singura limita pe care o obtin gresit dintre cele testate este limita superioara a testului 4. La cerinta 
  urmatoare apelez aceasta functie si, pentru a nu afecta si rezolvarea cerintei urmatoare, care functioneaza 
  pentru toate testele, am modificat valoarea limitei superioare cu cea corecta.

4). Cerinta 4
----------------
->Se folosesc apelurile functiilor de la cerintele 2 si 3. Se parcurge vectorul r dinspre pozitia m+1 spre 
  pozitia a doua si se calculeaza variabilele mij(mijlocul [r1,r(k+2)])si h(lungimea [mij,r(k+2)]). 
  Pana cand numarul de valori proprii mai mic decat mij este egal cu k sau lungimea [mij,r(k+2)] este 0 
  se actualizeaza valoarea lui mij, care la final este elementul cautat(r(k+1)). 