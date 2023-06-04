<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_delete_list</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the list, provided it is not used in a rule

### Description

Deletes the list, provided it is not used in a rule.

When you delete a list, Amazon Fraud Detector permanently deletes that
list and the elements in the list.

### Usage

    frauddetector_delete_list(name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="frauddetector_delete_list_:_name">name</code></td>
<td><p>[required] The name of the list to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_list(
      name = "string"
    )
