defmodule Bonfire.DeviceTest do
  use ExUnit.Case
  doctest Bonfire.Device

  test "greets the world" do
    assert Bonfire.Device.hello() == :world
  end
end
