# version sampler

STATS_NAME    = "stats"
STATS_VERSION = "[%STATS_VERSION%]"

module.exports = versions = {}

Object.keys(process.versions).forEach (name) ->
  versions[name] = (cb) ->
    cb null, process.versions[name]

versions[STATS_NAME] = (cb) ->
  cb null, STATS_VERSION
