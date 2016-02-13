# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config

# This configuration is loaded before any dependency and is restricted
# to this project. If another project depends on this project, this
# file won't be loaded nor affect the parent project. For this reason,
# if you want to provide default values for your application for
# 3rd-party users, it should be done in your "mix.exs" file.

# You can configure for your application as:
config :alice, :google_images_cse_id, System.get_env("GOOGLE_CSE_ID")
config :alice, :google_images_cse_token, System.get_env("GOOGLE_CSE_TOKEN")
config :alice, :google_images_safe_search_level, :medium

case Mix.env do
  env when env in [:prod, :dev] -> import_config "#{env}.exs"
  _other                        -> import_config "other.exs"
end
