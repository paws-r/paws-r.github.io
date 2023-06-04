<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_delete_security_profile</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This API is in preview release for Amazon Connect and is subject to change

### Description

This API is in preview release for Amazon Connect and is subject to
change.

Deletes a security profile.

### Usage

    connect_delete_security_profile(InstanceId, SecurityProfileId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_delete_security_profile_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_delete_security_profile_:_SecurityProfileId">SecurityProfileId</code></td>
<td><p>[required] The identifier for the security profle.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_security_profile(
      InstanceId = "string",
      SecurityProfileId = "string"
    )
