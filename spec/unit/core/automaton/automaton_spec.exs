# Unit Tests for the core functions and behavior of the Automaton module
defmodule AutomatonSpec do
  use ESpec
  doctest Automaton.Behavior

  before_all do
    nodes_config = [
      [name: "MockSeq1", mfa: {MockSeq1, :start_link, []}]
    ]

    [nodes_config: nodes_config]

    Automata.start_nodes(nodes_config)
  end

  let(:opts) do
  end

  # {:ok, state} = MockSeq1.init(opts)
  # {:noreply, state} = MockSeq1.handle_info({:update, A, 1}, state)
  # # assertion about state
  # {:noreply, state} = MockSeq1.handle_info({:on_init, B, 1}, state)
  # # assertion about state
  # {:noreply, state} = MockSeq1.handle_info({:on_terminate, A, 2}, state)
  # # assertion about state
  # {:noreply, state} = MockSeq1.handle_info({:blah, B, 2}, state)
  # # assertion about state
end
