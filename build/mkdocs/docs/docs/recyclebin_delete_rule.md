<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>recyclebin_delete_rule</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a Recycle Bin retention rule

### Description

Deletes a Recycle Bin retention rule. For more information, see [Delete
Recycle Bin retention
rules](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/recycle-bin-working-with-rules.html#recycle-bin-delete-rule)
in the *Amazon Elastic Compute Cloud User Guide*.

### Usage

    recyclebin_delete_rule(Identifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="recyclebin_delete_rule_:_Identifier">Identifier</code></td>
<td><p>[required] The unique ID of the retention rule.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_rule(
      Identifier = "string"
    )
