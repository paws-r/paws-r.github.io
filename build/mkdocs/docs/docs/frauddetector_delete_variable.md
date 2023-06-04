<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>frauddetector_delete_variable</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a variable

### Description

Deletes a variable.

You can't delete variables that are included in an event type in Amazon
Fraud Detector.

Amazon Fraud Detector automatically deletes model output variables and
SageMaker model output variables when you delete the model. You can't
delete these variables manually.

When you delete a variable, Amazon Fraud Detector permanently deletes
that variable and the data is no longer stored in Amazon Fraud Detector.

### Usage

    frauddetector_delete_variable(name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="frauddetector_delete_variable_:_name">name</code></td>
<td><p>[required] The name of the variable to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_variable(
      name = "string"
    )
