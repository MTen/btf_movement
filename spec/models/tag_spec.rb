require 'spec_helper'

describe Tag do
	it 'is valid with a tag name' do
		tag = Tag.new(
			tag: "homepage")
		expect(tag).to(be_valid)
	end

	it 'is invalid without a tag name' do
		tag = Tag.new(
			tag: nil)
		expect(tag).to(have(1).errors_on(:tag))
	end

end