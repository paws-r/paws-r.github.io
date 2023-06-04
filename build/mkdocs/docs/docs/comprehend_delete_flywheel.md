<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehend_delete_flywheel</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a flywheel

### Description

Deletes a flywheel. When you delete the flywheel, Amazon Comprehend does
not delete the data lake or the model associated with the flywheel.

For more information about flywheels, see [Flywheel
overview](https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html)
in the *Amazon Comprehend Developer Guide*.

### Usage

    comprehend_delete_flywheel(FlywheelArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="comprehend_delete_flywheel_:_FlywheelArn">FlywheelArn</code></td>
<td><p>[required] The Amazon Resource Number (ARN) of the flywheel to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_flywheel(
      FlywheelArn = "string"
    )
