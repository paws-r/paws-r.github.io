<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_disassociate_approved_origin</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This API is in preview release for Amazon Connect and is subject to change

### Description

This API is in preview release for Amazon Connect and is subject to
change.

Revokes access to integrated applications from Amazon Connect.

### Usage

    connect_disassociate_approved_origin(InstanceId, Origin)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_disassociate_approved_origin_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_disassociate_approved_origin_:_Origin">Origin</code></td>
<td><p>[required] The domain URL of the integrated application.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disassociate_approved_origin(
      InstanceId = "string",
      Origin = "string"
    )
