defmodule WeirdPhxClickWeb.Components.SomeComponent do
  use WeirdPhxClickWeb, :live_component
  alias Phoenix.LiveView.JS

  defp publish(js \\ %JS{}) do
    IO.inspect(js, label: "JS")
    js
    |> JS.set_attribute({"value", "publish"}, to: "#new_planner_action")
    |> JS.dispatch("click", to: "#publish_button")
  end
end
