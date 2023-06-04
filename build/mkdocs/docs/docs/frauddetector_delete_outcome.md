<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_delete_outcome</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an outcome

### Description

Deletes an outcome.

You cannot delete an outcome that is used in a rule version.

When you delete an outcome, Amazon Fraud Detector permanently deletes
that outcome and the data is no longer stored in Amazon Fraud Detector.

### Usage

    frauddetector_delete_outcome(name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="frauddetector_delete_outcome_:_name">name</code></td>
<td><p>[required] The name of the outcome to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_outcome(
      name = "string"
    )
