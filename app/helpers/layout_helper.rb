# frozen_string_literal: true

module LayoutHelper
  def inside_layout(layout = 'application', &)
    render inline: capture(&), layout: "layouts/#{layout}" # rubocop:disable Rails/RenderInline
  end
end
