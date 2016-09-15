# Coin Changer kata
#Write a function that takes a number of cents, and that returns a hash containing
#the least number of coins needed to generate the value of cents.
# eg. if you have 11 cents you should return {:dime =>}1, :penny => 1}; if you have
#31 cents hou should return {jquarter => 1, :nickel => 1, :penny =>1}.
#Build up your coin_changer using tests. Commit to git after every test.

require "minitest/autorun"
require_relative "coin_change_func.rb"

class TestCoinChanger < Minitest::Test
	def test_no_coins_in_hand_equals_empty_cents
		cents_received = 0
		assert_equal({}, coin_changer(cents_received))
	end
	def test_one_cent_equals_one_penny
	 	cents_received =1
		assert_equal({:penny => 1}, coin_changer(cents_received))
	end


	def test_two_cent_equals_two_pennies
	 	cents_received = 2
		assert_equal({:penny => 2}, coin_changer(cents_received))
	end

	def test_5_cents_equals_one_nickel
	 	cents_received = 5
		assert_equal({:nickel => 1}, coin_changer(cents_received))
	end

	def test_6_cents_equals_one_nickel_and_one_penny
	 	cents_received = 6
		assert_equal({{:nickel => 1, :penny => 1} =>6}, coin_changer(cents_received))
	end

	def test_7_cents_equals_one_nickel_and_two_pennies
	 	cents_received = 7
		assert_equal({{:nickel => 1, :penny => 2} =>7}, coin_changer(cents_received))
	end

	def test_10_cents_equals_one_dime
	 	cents_received = 10
		assert_equal({:dime => 1}, coin_changer(cents_received))
	end

	def test_14_cents_equals_one_dime_and_four_pennies
	 	cents_received = 14
		assert_equal({{:dime => 1, :penny => 4} =>14}, coin_changer(cents_received))
	end

	def test_25_cents_equals_one_dime_and_four_pennies
	 	cents_received = 25
		assert_equal({:quarter => 1}, coin_changer(cents_received))
	end




end
	