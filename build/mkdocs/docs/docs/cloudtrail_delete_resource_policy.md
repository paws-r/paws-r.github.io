<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudtrail_delete_resource_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the resource-based policy attached to the CloudTrail channel

### Description

Deletes the resource-based policy attached to the CloudTrail channel.

### Usage

    cloudtrail_delete_resource_policy(ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudtrail_delete_resource_policy_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the CloudTrail
channel you're deleting the resource-based policy from. The following is
the format of a resource ARN:
<code>arn:aws:cloudtrail:us-east-2:123456789012:channel/MyChannel</code>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_resource_policy(
      ResourceArn = "string"
    )
