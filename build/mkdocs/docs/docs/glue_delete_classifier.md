<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_delete_classifier</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes a classifier from the Data Catalog

### Description

Removes a classifier from the Data Catalog.

### Usage

    glue_delete_classifier(Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_delete_classifier_:_Name">Name</code></td>
<td><p>[required] Name of the classifier to remove.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_classifier(
      Name = "string"
    )
