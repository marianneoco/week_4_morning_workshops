require 'diary'

describe Diary do
  it "should create an instance of Diary" do
    expect(subject).to be_instance_of(Diary)
  end

  it "is empty when first created" do
    expect(subject.entries).to eq []
  end

  it "can be unlocked" do
    subject.secret.unlock
    expect(subject.secret.locked).to eq false
  end

  it "can be locked" do
    subject.secret.unlock
    subject.secret.lock
    expect(subject.secret.locked).to eq true
  end

  it "can return all entries" do
    subject.secret.unlock
    subject.add_entry("test")
    subject.add_entry("test2")
    expect(subject.get_entries).to eq ["test", "test2"]
  end

  it "should not allow an entry to be added if the diary is locked" do
    expect { subject.add_entry("test") }.to raise_error "Diary is locked!!!"
  end

  it "should not allow all entries to be returned if the diary is locked" do
    expect { subject.get_entries }.to raise_error "Diary is locked..."
  end
end
