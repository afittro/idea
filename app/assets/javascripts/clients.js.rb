class ClientsView
  # We should have <body class="controller-<%= controller_name %>"> in layouts
  def initialize(selector = 'body.controller-clients')
    @selector = selector
  end

  def setup
  end


  private

  attr_reader :selector, :element

  # Register events on document to save memory and be friends to Turbolinks
  def on(event, selector = nil, &block)
    Element['document'].on(event, selector, &block)
  end
end

ClientsView.new.setup
