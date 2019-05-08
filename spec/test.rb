describe "#deduct" do
  it "shoud remove a certain amount of money from balance" do
    amount  = 5
    card = Oystercard.new
    card.balace = 10
    expect(card.deduct(amount)).to eq(5)
  end
end
