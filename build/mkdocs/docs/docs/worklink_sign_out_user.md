<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>worklink_sign_out_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Signs the user out from all of their devices

### Description

Signs the user out from all of their devices. The user can sign in again
if they have valid credentials.

### Usage

    worklink_sign_out_user(FleetArn, Username)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="worklink_sign_out_user_:_FleetArn">FleetArn</code></td>
<td><p>[required] The ARN of the fleet.</p></td>
</tr>
<tr class="even">
<td><code id="worklink_sign_out_user_:_Username">Username</code></td>
<td><p>[required] The name of the user.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$sign_out_user(
      FleetArn = "string",
      Username = "string"
    )
