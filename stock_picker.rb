# Return a pair of days to represent the best day to buy and the best day to sell, days start at 0
#
#LOGIC:
#Find and compare the indexes of the array's min and max
#Make a replica of the original array and remove the min and max values from the replica until the index of the min is less than the index of the max
#Find the min and max in the altered replica and trace the answers to the original indexes
#return the two matched indexes from the original inside another array

stock = [17,3,6,7,15,8,6,1,10]
replica = [17,3,6,7,15,8,6,1,10]

min = 0
max = 0

def stock_picker(stock, replica)
  while (replica.find_index(replica.min) > replica.find_index(replica.max))
    replica.delete_at(replica.find_index(replica.min))
    replica.delete_at(replica.find_index(replica.max))
    min = replica.min
    max = replica.max
  end

  days = [stock.find_index(min), stock.find_index(max)]
end

puts stock_picker(stock, replica)
#=> [1, 4]
