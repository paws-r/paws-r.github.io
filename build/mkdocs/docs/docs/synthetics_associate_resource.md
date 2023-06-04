<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>synthetics_associate_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates a canary with a group

### Description

Associates a canary with a group. Using groups can help you with
managing and automating your canaries, and you can also view aggregated
run results and statistics for all canaries in a group.

You must run this operation in the Region where the canary exists.

### Usage

    synthetics_associate_resource(GroupIdentifier, ResourceArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="synthetics_associate_resource_:_GroupIdentifier">GroupIdentifier</code></td>
<td><p>[required] Specifies the group. You can specify the group name,
the ARN, or the group ID as the <code>GroupIdentifier</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="synthetics_associate_resource_:_ResourceArn">ResourceArn</code></td>
<td><p>[required] The ARN of the canary that you want to associate with
the specified group.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$associate_resource(
      GroupIdentifier = "string",
      ResourceArn = "string"
    )
