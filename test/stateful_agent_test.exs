defmodule StatefulAgentTest do
  use ExUnit.Case
  doctest StatefulAgent

  test "greets the world" do
    assert StatefulAgent.hello() == :world
  end
end
