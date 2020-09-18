#! /usr/bin/env python3
from jinja2 import Environment, FileSystemLoader, select_autoescape

import json
import os

ENVIRONMENT=Environment(loader=FileSystemLoader('templates'), lstrip_blocks=True, trim_blocks=True)
BUNDLE_TEMPLATE=ENVIRONMENT.get_template("bundle-dawn-grand.xml.jinja")
COLLECTION_TEMPLATE=ENVIRONMENT.get_template("collection.xml.jinja")

def main():
    bundles = json.load(open("bundles.json"))

    for bundle in bundles:
        bundle_id = bundle["bundle_id"]
        
        os.makedirs(bundle_id, exist_ok=True)

        bundle_output_path = os.path.join(bundle_id, "bundle_" + bundle_id + ".xml")
        with open(bundle_output_path, "w") as output_file:
            output_file.write(BUNDLE_TEMPLATE.render(**bundle))


        for collection in bundle["collections"]:
            collection_id = collection["collection_id"]
            
            os.makedirs(os.path.join(bundle_id, collection_id), exist_ok=True)

            inventory_filename = "collection_inventory_" + collection_id + ".csv"
            inventory_path = os.path.join(bundle_id, collection_id, inventory_filename)

            inventory_count = 0
            if os.path.exists(inventory_path):
                inventory_count = len(open(inventory_path).readlines())

            collection_output_path = os.path.join(bundle_id, collection_id, "collection_" + collection_id + ".xml")

            with open(collection_output_path, "w") as output_file:
                output_file.write(COLLECTION_TEMPLATE.render(bundle=bundle, collection=collection, inventory_count=inventory_count))

if __name__ == "__main__":
    main()