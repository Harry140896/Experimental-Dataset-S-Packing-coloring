
def Examples1(n):
     from uuid import uuid4
     g=[]
     while len(g)<11:
         p=graphs.RandomGNM(n,n+randint(1,5)) 
         if p.is_connected():
             g.append(p)
     from csv import writer
     f = open('Example1.csv','a')
     W = writer(f)
     R= []
     for i in range(10):
         R.append(str(uuid4()))
         R.append([g[i].order(),g[i].size()])
         R.append(g[i].edges(labels = False))
         W.writerow(R)
         R=[]
     f.close()
