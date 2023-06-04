<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codestar_create_user_profile</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a profile for a user that includes user preferences, such as the display name and email address assocciated with the user, in AWS CodeStar

### Description

Creates a profile for a user that includes user preferences, such as the
display name and email address assocciated with the user, in AWS
CodeStar. The user profile is not project-specific. Information in the
user profile is displayed wherever the user's information appears to
other users in AWS CodeStar.

### Usage

    codestar_create_user_profile(userArn, displayName, emailAddress,
      sshPublicKey)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codestar_create_user_profile_:_userArn">userArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the user in
IAM.</p></td>
</tr>
<tr class="even">
<td><code
id="codestar_create_user_profile_:_displayName">displayName</code></td>
<td><p>[required] The name that will be displayed as the friendly name
for the user in AWS CodeStar.</p></td>
</tr>
<tr class="odd">
<td><code
id="codestar_create_user_profile_:_emailAddress">emailAddress</code></td>
<td><p>[required] The email address that will be displayed as part of
the user's profile in AWS CodeStar.</p></td>
</tr>
<tr class="even">
<td><code
id="codestar_create_user_profile_:_sshPublicKey">sshPublicKey</code></td>
<td><p>The SSH public key associated with the user in AWS CodeStar. If a
project owner allows the user remote access to project resources, this
public key will be used along with the user's private key for SSH
access.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      userArn = "string",
      displayName = "string",
      emailAddress = "string",
      sshPublicKey = "string",
      createdTimestamp = as.POSIXct(
        "2015-01-01"
      ),
      lastModifiedTimestamp = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$create_user_profile(
      userArn = "string",
      displayName = "string",
      emailAddress = "string",
      sshPublicKey = "string"
    )
