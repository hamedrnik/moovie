tmdb_config = YAML.load(File.read(Rails.root.join('config', 'tmdb.yml')))[Rails.env]

# setup your API key
Tmdb.api_key = tmdb_config["api_key"]

# setup your default language
Tmdb.default_language = tmdb_config["language"]
