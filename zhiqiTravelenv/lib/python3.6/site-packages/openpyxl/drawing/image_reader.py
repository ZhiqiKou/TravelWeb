from __future__ import absolute_import

from io import BytesIO

from openpyxl.xml.functions import fromstring
from openpyxl.xml.constants import IMAGE_NS
from openpyxl.packaging.relationship import get_rel, get_rels_path, get_dependents
from openpyxl.drawing.spreadsheet_drawing import SpreadsheetDrawing
from openpyxl.drawing.image import Image


def find_images(archive, path):
    """
    Given the path to a drawing file extract anchors with images
    """

    src = archive.read(path)
    tree = fromstring(src)
    drawing = SpreadsheetDrawing.from_tree(tree)

    rels_path = get_rels_path(path)
    deps = []
    if rels_path in archive.namelist():
        deps = get_dependents(archive, rels_path)

    images = []
    for rel in drawing._blip_rels:
        dep = deps[rel.embed]
        if dep.Type == IMAGE_NS:
            image = Image(BytesIO(archive.read(dep.target)))
            image.anchor = rel.anchor
            images.append(image)
    return images
