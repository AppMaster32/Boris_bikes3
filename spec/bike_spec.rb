require 'bike.rb'



describe Bike do 
	it "Shold not be broken	after we create it" do
		bike = Bike.new
		expect(bike).not_to be_broken
	end

	it "should be able to break" do
		bike = Bike.new
		bike.break!
		expect(bike).to be_broken
	end

	it "should be able to get fixed" do
		bike = Bike.new
		bike.break!
		bike.fix!
		expect(bike).not_to be_broken
	end
end