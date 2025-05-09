


def NumPackCol(g):
	from csv import writer
	f=open('Examples/OutputExamples.csv','a')	
	W=writer(f)
	from sage.graphs.graph_coloring import all_graph_colorings as allcol
	for q in range(len(g)):
		L=[]
		L.append(g[q][0])
		G = Graph(eval(g[q][2]))
		T = allcol(G,5)
		t = list(T)
		count=0
		for c in range(len(t)):
			flag=0
			for j in t[c]:
				if len(t[c][j])>1:
					Z=Combinations(t[c][j],2)
					z=list(Z)
					for l in z:
						if G.distance(l[0],l[1])<j+2:
							flag=1
							break
					if flag==1:
						break 
			if flag==0:
				count=count+1
		
		
		L.append(count)
		W.writerow(L)
	
	f.close()
		
