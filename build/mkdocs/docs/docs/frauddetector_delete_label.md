<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_delete_label</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a label

### Description

Deletes a label.

You cannot delete labels that are included in an event type in Amazon
Fraud Detector.

You cannot delete a label assigned to an event ID. You must first delete
the relevant event ID.

When you delete a label, Amazon Fraud Detector permanently deletes that
label and the data is no longer stored in Amazon Fraud Detector.

### Usage

    frauddetector_delete_label(name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="frauddetector_delete_label_:_name">name</code></td>
<td><p>[required] The name of the label to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_label(
      name = "string"
    )
