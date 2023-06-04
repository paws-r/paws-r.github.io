<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_describe_authentication_profiles</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes an authentication profile

### Description

Describes an authentication profile.

### Usage

    redshift_describe_authentication_profiles(AuthenticationProfileName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_describe_authentication_profiles_:_AuthenticationProfileName">AuthenticationProfileName</code></td>
<td><p>The name of the authentication profile to describe. If not
specified then all authentication profiles owned by the account are
listed.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AuthenticationProfiles = list(
        list(
          AuthenticationProfileName = "string",
          AuthenticationProfileContent = "string"
        )
      )
    )

### Request syntax

    svc$describe_authentication_profiles(
      AuthenticationProfileName = "string"
    )
