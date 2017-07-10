default["mmonit"]["host"] = node["ipaddress"]
default["mmonit"]["port"] = 8080
default["mmonit"]["dir"] = "/usr/local/mmonit"
default["mmonit"]["source"]["version"] = "3.4.1"
default["mmonit"]["source"]["filename"] = "mmonit-#{node['mmonit']['source']['version']}-linux-x64.tar.gz"
default["mmonit"]["source"]["url"] = "http://mmonit.com/dist/#{node['mmonit']['source']['filename']}"
default["mmonit"]["license_owner"] = "Tildeslash Ltd. - Trial License"
default["mmonit"]["license"] = nil
default["mmonit"]["db"]["url"] = "sqlite:///db/mmonit.db?synchronous=normal&heap_limit=8000&foreign_keys=on&journal_mode=wal"
default["mmonit"]["db"]["minConnections"] = "5"
default["mmonit"]["db"]["maxConnections"] = "25"
default["mmonit"]["db"]["reapConnections"] = "300"

default["mmonit"]["proxy_scheme"] = nil
default["mmonit"]["proxy_name"] = nil
default["mmonit"]["proxy_port"] = nil
