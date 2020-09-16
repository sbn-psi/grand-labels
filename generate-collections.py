#! /usr/bin/env python3
from jinja2 import Environment, FileSystemLoader, select_autoescape

import json
import os

ENVIRONMENT=Environment(loader=FileSystemLoader('templates'), lstrip_blocks=True, trim_blocks=True)
TEMPLATE=ENVIRONMENT.get_template("collection.xml.jinja")

def main():
    spec = json.load(open("collections.json"))
    for collection in spec:
        bundle_id = collection["bundle_id"]
        collection_id = collection["collection_id"]

        os.makedirs(bundle_id, exist_ok=True)
        output_path = os.path.join(bundle_id, "collection_" + collection_id + ".xml")
        with open(output_path, "w") as output_file:
            output_file.write(TEMPLATE.render(**collection))

if __name__ == "__main__":
    main()