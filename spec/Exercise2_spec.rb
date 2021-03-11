require 'Exercise2'

describe Diary do
  describe 'add' do
    it 'adds an entry' do
      entry_double = double :entry, :title => "My title", :body => "body"
      entry_class_double = double :entry_class, new: entry_double

      diary = Diary.new(entry_class_double)

      expect(entry_class_double).to receive(:new)
      diary.add("My title", "body")
    end
  end
end
