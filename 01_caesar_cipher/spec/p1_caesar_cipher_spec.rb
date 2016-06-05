require 'spec_helper'
require 'p1_caesar_cipher'

describe "p1_caesar_cipher" do
	context "given an empty string" do
		it "returns empty string" do
			expect(caesar_cipher("",1)).to eql("")
		end
	end
	context "given shift equal to 0" do
		it "returns original string" do
			expect(caesar_cipher("some xyz aw rs r",0)).to eql("some xyz aw rs r")
		end
	end
	context "given letters with different size" do
		it "encrypts properly" do
			expect(caesar_cipher("SoMe leTTerS are SmaLl some ArE bIg",9)).to eql("BxVn unCCnaB jan BvjUu bxvn JaN kRp")
		end
	end
	context "given numbers and special characters" do
		it "retains numbers and special characters" do
			expect(caesar_cipher("Why 3 $ this #% () encryption goes !! $",13)).to eql("Jul 3 $ guvf #% () rapelcgvba tbrf !! $")
		end
	end
	context "given letters" do
		it "performs wrap around z-a" do
			expect(caesar_cipher("fantastic plastic zoom",24)).to eql("dylryqrga njyqrga xmmk")
		end
	end
end