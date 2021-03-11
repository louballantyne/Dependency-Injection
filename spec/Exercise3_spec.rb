require 'Exercise3'

describe EmailClient do
  describe 'message' do
    it 'creates a message' do
      message_double = double :message, :to => "friend@example.com", :body => "HELLO!"
      message_class_double = double :message_class, new: message_double

      email_client = EmailClient.new(message_class_double)

      expect(message_class_double).to receive(:new)
      email_client.message
    end
  end
end

describe Message do
  describe 'send' do
    it 'sends a message' do
      expect(subject).to respond_to(:send).with(2).argument
    end
  end
end

#test_card.instance_variable_set(:@journey, true)


describe SayHello do
  describe 'run' do
    it 'sends a message' do
      client_double = double("email client double")
      message_class_double = double(:message, :to => "friend@example.com", :body => "HELLO!")
      allow(client_double).to receive(:message) { message_class_double }
      expect(message_class_double).to receive(:send).with("friend@example.com","HELLO!")
      subject.run(client_double)
    end
  end

end
