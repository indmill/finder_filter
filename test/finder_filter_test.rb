require 'rubygems'
require 'test/spec'
require 'mocha'
require 'action_controller'
require File.expand_path(File.dirname(__FILE__) + '/../lib/finder_filter')

describe FinderFilter do
  it "should assign before filter and define method" do
    controller = Object.new
    controller.extend FinderFilter
    controller.expects(:before_filter).with("find_foo", {})
    controller.expects(:define_method).with("find_foo")
    controller.finder_filter :foo
  end
end
