<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_delete_authentication_profile</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an authentication profile

### Description

Deletes an authentication profile.

### Usage

    redshift_delete_authentication_profile(AuthenticationProfileName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_delete_authentication_profile_:_AuthenticationProfileName">AuthenticationProfileName</code></td>
<td><p>[required] The name of the authentication profile to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AuthenticationProfileName = "string"
    )

### Request syntax

    svc$delete_authentication_profile(
      AuthenticationProfileName = "string"
    )
