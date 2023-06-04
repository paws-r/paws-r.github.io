<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_get_lineage_group_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## The resource policy for the lineage group

### Description

The resource policy for the lineage group.

### Usage

    sagemaker_get_lineage_group_policy(LineageGroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_get_lineage_group_policy_:_LineageGroupName">LineageGroupName</code></td>
<td><p>[required] The name or Amazon Resource Name (ARN) of the lineage
group.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      LineageGroupArn = "string",
      ResourcePolicy = "string"
    )

### Request syntax

    svc$get_lineage_group_policy(
      LineageGroupName = "string"
    )
