require 'Exercise1'

describe Note do
  it 'formats the note appropriately' do
    noteformatter = double :formatter_double
    note = Note.new("My Note", "This is my note.", noteformatter)
    allow(noteformatter).to receive(:format) { "Title: #{note.title}\n#{note.body}" }
    expect(note.display).to eq "Title: #{note.title}\n#{note.body}"
  end
end

describe NoteFormatter do
alias_method :noteformatter, :subject
  it 'formats a note' do
    note = double("note double", :title => "My note", :body => "This is my note.")
    expect(noteformatter.format(note)).to eq "Title: #{note.title}\n#{note.body}"
  end
end
