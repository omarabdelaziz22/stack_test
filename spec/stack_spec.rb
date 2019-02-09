require_relative "../stack"
require 'rspec'
require 'rspec/its'

describe Stack do
  subject {Stack.new }

  describe "Validations" do

    it "is valid with integer" do
      subject.push(5)
      expect(subject.pop).to eq 5
    end

    it "should raise an error if entered item not integer" do
      expect{subject.push("item")}.to raise_error(ArgumentError)
    end
  end

  describe "Pop" do
    it "should raise an error if stack is empty"  do
      expect{subject.pop}.to raise_error(Exception)
    end
  end

  describe "Push" do
    it "has one element after pushing one element" do
      subject.push(5)
      expect(subject.pop).to eq 5
    end
  end

  describe "Max" do

    it "should return the largest number in stack" do
      subject.push(10)
      subject.push(6)
      subject.push(7)
      expect(subject.max).to eq 10
    end

    it "should return the largest number in stack" do
      subject.push(7)
      subject.push(6)
      subject.push(10)
      expect(subject.max).to eq 10
    end

    it "should return the largest number in stack" do
      subject.push(1)
      subject.push(2)
      subject.push(3)
      subject.push(3)
      subject.pop
      expect(subject.max).to eq 3
    end

    it "is not valid with an empty stack"  do
      expect{subject.max}.to raise_error(Exception)
    end
  end
end


describe Extras do
  subject {Extras.new }
  
  describe "Pop" do
    it "should raise an error if stack is empty"  do
      subject.push(5)
      subject.pop
      expect{subject.mean}.to raise_error(Exception)
    end
  end

  describe "Push" do
    it "has one after pushing one" do
      subject.push(5)
      expect(subject.mean).to eq 5
    end
  end

  describe "Mean" do
    it "should return the mean value (average value)" do
      subject.push(10)
      subject.push(6)
      subject.push(8)
      expect(subject.mean).to eq 8
    end

    it "should raise an error if stack is empty"  do
      expect{subject.mean}.to raise_error(Exception)
    end
  end
end
