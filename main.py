
import copy
def get_neighboors(main):
   neighboors=[]

   #left
   left =copy.deepcopy(main)             
   left["location"]='A'
   neighboors.append(left)

   #right
   right=copy.deepcopy(main)
   right["location"]='B'
   neighboors.append(right)

   #clean
   clean=copy.deepcopy(main)
   clean["location"]='B'
   neighboors.append(clean)
   
   return neighboors



def bfs(start):
    explored=[]
    rel={}
    fronter=[start]
    while len(fronter)>0:
        curr=fronter.pop(0)
        if curr['A']=="claen" and curr['B']=="clean":
          solution=[str(curr)]
          x=rel.get[str(curr),-1]
        while x!=-1:
           solution.append(x)
           x=rel.get(x,-1)
        return solution
        

        explored.append(curr)
        neighboors=get_neighboors(curr)
        for neighboor in neighboors:
           curr =fronter.pop(0)
           if curr['A']=="clean" and curr['B']=="clean":
              solution=[str(curr)]
              x=rel.get(str(curr),-1)
              while x!=-1:
                  solution.append(x)
                  x=rel.get(x,-1)
              return solution
           explored.append(curr)
           neighboors=get_neighboors(curr)
           for neighboor in neighboors:
              if neiboor not in fronter and neighboor not in explored:
                 fronter.append(neighboor)
                 rel[str(neighboor)]=str(curr)

    return 'no solution'


start={
   'A':"Dirty",
   'B':"Dirty",
   'location':"A"
}
sol=bfs(start)
sol.reverse
print("\n".join(sol))