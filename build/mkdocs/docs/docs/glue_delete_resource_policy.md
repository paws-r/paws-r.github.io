<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_delete_resource_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a specified policy

### Description

Deletes a specified policy.

### Usage

    glue_delete_resource_policy(PolicyHashCondition, ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_delete_resource_policy_:_PolicyHashCondition">PolicyHashCondition</code></td>
<td><p>The hash value returned when this policy was set.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_delete_resource_policy_:_ResourceArn">ResourceArn</code></td>
<td><p>The ARN of the Glue resource for the resource policy to be
deleted.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_resource_policy(
      PolicyHashCondition = "string",
      ResourceArn = "string"
    )
