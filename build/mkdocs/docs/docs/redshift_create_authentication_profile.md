<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_create_authentication_profile</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an authentication profile with the specified parameters

### Description

Creates an authentication profile with the specified parameters.

### Usage

    redshift_create_authentication_profile(AuthenticationProfileName,
      AuthenticationProfileContent)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_create_authentication_profile_:_AuthenticationProfileName">AuthenticationProfileName</code></td>
<td><p>[required] The name of the authentication profile to be
created.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_create_authentication_profile_:_AuthenticationProfileContent">AuthenticationProfileContent</code></td>
<td><p>[required] The content of the authentication profile in JSON
format. The maximum length of the JSON string is determined by a quota
for your account.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AuthenticationProfileName = "string",
      AuthenticationProfileContent = "string"
    )

### Request syntax

    svc$create_authentication_profile(
      AuthenticationProfileName = "string",
      AuthenticationProfileContent = "string"
    )
