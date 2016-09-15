#Build up & commit after each test.



def coin_changer(cents_recieved)
	coins =	{}
	if cents_recieved == 1
		coins[:penny] = 1
	end


	if cents_recieved == 2
		coins[:penny] = 2
	end

	if cents_recieved == 5
		coins[:nickel] = 1
	end
	
if cents_recieved == 6
		coins[:nickel=>1, :penny =>1] = 6
	end



	coins 
end

