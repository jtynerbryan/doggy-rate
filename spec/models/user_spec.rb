describe User do 
	let(:attributes) do 
		{
			name: "Yakov",
			email: "yakov@yakov.com",
			password: "123"
		}
	end

	it "is considered valid" do
		expect(User.new(attributes)).to be_valid
	end
	
end