<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_disassociate_security_key</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This API is in preview release for Amazon Connect and is subject to change

### Description

This API is in preview release for Amazon Connect and is subject to
change.

Deletes the specified security key.

### Usage

    connect_disassociate_security_key(InstanceId, AssociationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_disassociate_security_key_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_disassociate_security_key_:_AssociationId">AssociationId</code></td>
<td><p>[required] The existing association identifier that uniquely
identifies the resource type and storage config for the given instance
ID.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disassociate_security_key(
      InstanceId = "string",
      AssociationId = "string"
    )
