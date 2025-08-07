-- Copyright (c) 2025 Maulik Mistry
--
-- This script is licensed under Apache License 2.0. See the LICENSE.txt file for details.
--
-- WirePlumber Lua script to route all audio output streams to EasyEffects Sink.

rule = {
  matches = {
    {
      { "media.class", "equals", "Stream/Output/Audio" }
    }
  },
  apply_properties = {
    ["node.target"] = "Easy Effects Sink"
  }
}

table.insert(alsa_monitor.rules, rule)
