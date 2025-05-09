def PIETime(g,k):
     from time import time
     E = eval(g[2])
     load('PackingColoringUsingPIE.sage')
     G = Graph(E)
     start = time()
     r=PackingColoring(G,k)
     return [time() - start,r]









def ImemberTime(g,k):
     from time import time
     E = eval(g[2])
     macaulay2('loadPackage "Graphs"')
     macaulay2('EG={}')
     for i in range(len(E)): 
         macaulay2('e={}') 
         macaulay2('e=append(e,'+str(E[i][0])+')')   
         macaulay2('e=append(e,'+str(E[i][1])+')') 
         macaulay2('EG=append(EG,e)')
     macaulay2('H = graph(EG)')
     macaulay2('load "Imember.m2"') 
     macaulay2('i=0')
     for i in range(k):
         macaulay2('i=i+1')

     start = time()
     macaulay2.eval('Idealmember(H,i)')
     return time()-start
     
    










def PackColTime(g,k):
     from time import time
     E = eval(g[2])
     macaulay2('loadPackage "Graphs"')
     macaulay2('EG={}')
     for i in range(len(E)):
         macaulay2('e={}')
         macaulay2('e=append(e,'+str(E[i][0])+')')
         macaulay2('e=append(e,'+str(E[i][1])+')')
         macaulay2('EG=append(EG,e)')
     macaulay2('H = graph(EG)')
     macaulay2('load "PackColElim.m2"')
     macaulay2('i=0')
     for i in range(k):
         macaulay2('i=i+1')

     start = time()
     macaulay2.eval('PackColElim(H,i)')
     return time()-start








def VCPackColTime(g,k):
     from time import time
     E = eval(g[2])
     macaulay2('loadPackage "Graphs"')
     macaulay2('EG={}')
     for i in range(len(E)):
         macaulay2('e={}')
         macaulay2('e=append(e,'+str(E[i][0])+')')
         macaulay2('e=append(e,'+str(E[i][1])+')')
         macaulay2('EG=append(EG,e)')
     macaulay2('H = graph(EG)')
     macaulay2('load "VPackCol.m2"')
     macaulay2('i=0')
     for i in range(k):
         macaulay2('i=i+1')

     start = time()
     macaulay2.eval('VCPackCol(H,i)')
     return time()-start








def MaaroufTime(g,k):
     from time import time
     E = eval(g[2])
     macaulay2('loadPackage "Graphs"')
     macaulay2('EG={}')
     for i in range(len(E)):
         macaulay2('e={}')
         macaulay2('e=append(e,'+str(E[i][0])+')')
         macaulay2('e=append(e,'+str(E[i][1])+')')
         macaulay2('EG=append(EG,e)')
     macaulay2('H = graph(EG)')
     macaulay2('load "Maarouf.m2"')
     macaulay2('i=0')
     for i in range(k):
         macaulay2('i=i+1')

     start = time()
     macaulay2.eval('Maar(H,i)')
     return time()-start





