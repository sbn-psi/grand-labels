#! /usr/bin/env python3
from jinja2 import Environment, FileSystemLoader, select_autoescape

import json
import os

ENVIRONMENT=Environment(loader=FileSystemLoader('templates'), lstrip_blocks=True, trim_blocks=True)
TEMPLATE=ENVIRONMENT.get_template("bundle-dawn-grand.xml.jinja")

def main():
    spec = json.load(open("bundles.json"))
    for bundle in spec:
        bundle_id = bundle["bundle_id"]
        os.makedirs(bundle_id, exist_ok=True)
        output_path = os.path.join(bundle_id, "bundle_" + bundle_id + ".xml")
        with open(output_path, "w") as output_file:
            output_file.write(TEMPLATE.render(**bundle, ))

if __name__ == "__main__":
    main()