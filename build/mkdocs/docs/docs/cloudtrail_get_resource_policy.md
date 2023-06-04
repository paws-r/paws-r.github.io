<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudtrail_get_resource_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the JSON text of the resource-based policy document attached to the CloudTrail channel

### Description

Retrieves the JSON text of the resource-based policy document attached
to the CloudTrail channel.

### Usage

    cloudtrail_get_resource_policy(ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudtrail_get_resource_policy_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the CloudTrail
channel attached to the resource-based policy. The following is the
format of a resource ARN:
<code>arn:aws:cloudtrail:us-east-2:123456789012:channel/MyChannel</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResourceArn = "string",
      ResourcePolicy = "string"
    )

### Request syntax

    svc$get_resource_policy(
      ResourceArn = "string"
    )
