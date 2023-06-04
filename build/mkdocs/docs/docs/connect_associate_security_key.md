<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_associate_security_key</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This API is in preview release for Amazon Connect and is subject to change

### Description

This API is in preview release for Amazon Connect and is subject to
change.

Associates a security key to the instance.

### Usage

    connect_associate_security_key(InstanceId, Key)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_associate_security_key_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code id="connect_associate_security_key_:_Key">Key</code></td>
<td><p>[required] A valid security key in PEM format.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AssociationId = "string"
    )

### Request syntax

    svc$associate_security_key(
      InstanceId = "string",
      Key = "string"
    )
