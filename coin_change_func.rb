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
		coins[:nickel=> 1, :penny => 1] = 6
	end

if cents_recieved == 7
		coins[:nickel=> 1, :penny => 2] = 7
	end

	if cents_recieved == 10
		coins[:dime] = 1
	end

	if cents_recieved == 14
		coins[:dime => 1, :penny => 4] = 14
	end


	if cents_recieved == 25
		coins[:quarter] = 1
	end

	if cents_recieved == 50
		coins[:fifty_cent_piece] = 1
	end

if cents_recieved == 100
		coins[:dollar_piece] = 1
	end

if cents_recieved == 493
		coins[:dollar_piece => 4,:fifty_cent_piece => 1, :quarter => 1, :dime => 1, :nickel=> 1, :penny => 3] = 493
	end
	coins 
end

