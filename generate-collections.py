#! /usr/bin/env python3
from jinja2 import Environment, FileSystemLoader, select_autoescape

import json
import os

ENVIRONMENT=Environment(loader=FileSystemLoader('templates'), lstrip_blocks=True, trim_blocks=True)
TEMPLATE=ENVIRONMENT.get_template("collection.xml.jinja")

def main():
    bundles = json.load(open("bundles.json"))

    for bundle in bundles:
        bundle_id = bundle["bundle_id"]
        
        os.makedirs(bundle_id, exist_ok=True)

        for collection in bundle["collections"]:
            collection_id = collection["collection_id"]
            collection_output_path = os.path.join(bundle_id, "collection_" + collection_id + ".xml")
            with open(collection_output_path, "w") as output_file:
                output_file.write(TEMPLATE.render(bundle=bundle, collection=collection))

if __name__ == "__main__":
    main()