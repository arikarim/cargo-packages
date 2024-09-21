# Third party requirements.
require "marten"
require "pg"
require "serializer"

# Configuration requirements.
require "../config/settings/base"
require "../config/settings/**"
require "../config/initializers/**"
require "../config/routes"

# Project requirements.
require "./emails/**"
require "./handlers/**"
require "./models/**"
require "./schemas/**"
require "./serializers/**"
