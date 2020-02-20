$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  
  pp nds
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  
  hash={}
  
    row=0
  while row < nds.length
  total=0
  
  #ok now I have to figure out how to add up all the values IN THIS ROW
  rownum=0
  while rownum< nds[row][:movies].length
  total+=nds[row][:movies][rownum][:worldwide_gross]
  rownum+=1
end
  
  hash[nds[row][:name]]=total
  row+=1
  end
  
  
  result = hash
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
end
