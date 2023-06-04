<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codestar_describe_user_profile</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes a user in AWS CodeStar and the user attributes across all projects

### Description

Describes a user in AWS CodeStar and the user attributes across all
projects.

### Usage

    codestar_describe_user_profile(userArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codestar_describe_user_profile_:_userArn">userArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the user.</p></td>
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

    svc$describe_user_profile(
      userArn = "string"
    )
