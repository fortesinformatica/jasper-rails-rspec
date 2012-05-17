# jasper-rails-rspec

jasper-rails and RSpec integration. It just defines a new RSpec matcher called "contain".

## Dependencies

[jasper-rails](http://github.com/fortesinformatica/jasper-rails)
[rspec-rails](http://github.com/rspec/rspec-rails)
[pdf-inspector](http://github.com/prawnpdf/pdf-inspector)

## Install

```
gem install jasper-rails-rspec
```

## Configure

Add `jasper-rails-rspec` to your Gemfile:

```ruby
  gem "jasper-rails-rspec"
```

## Using jasper-rails-rspec

```ruby
require 'spec_helper'

describe PeopleController do
	describe "GET listagem" do
    before do
      Person.stub(:all).and_return([Person.new(:name=>'jonh', :email=>'lennon@beatles.com'), Person.new(:name=>'paul', :email=>'paul@beatles.com')])
    end
    
    it "be success" do
      response.should be_success
    end
    
    it "should not contain nulls" do
      get :index, :format => :pdf
      response.should_not contain("null")
    end

    it "should contain emails" do
      get :index, :format => :pdf
      response.should contain("lennon@beatles.com")
      response.should contain("paul@beatles.com")
    end
	end
end
```

## DEMO
Check out [jasper-rails-demo](http://github.com/fortesinformatica/jasper-rails-demo) for a running example.
