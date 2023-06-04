<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codestar_associate_team_member</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds an IAM user to the team for an AWS CodeStar project

### Description

Adds an IAM user to the team for an AWS CodeStar project.

### Usage

    codestar_associate_team_member(projectId, clientRequestToken, userArn,
      projectRole, remoteAccessAllowed)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codestar_associate_team_member_:_projectId">projectId</code></td>
<td><p>[required] The ID of the project to which you will add the IAM
user.</p></td>
</tr>
<tr class="even">
<td><code
id="codestar_associate_team_member_:_clientRequestToken">clientRequestToken</code></td>
<td><p>A user- or system-generated token that identifies the entity that
requested the team member association to the project. This token can be
used to repeat the request.</p></td>
</tr>
<tr class="odd">
<td><code
id="codestar_associate_team_member_:_userArn">userArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) for the IAM user you
want to add to the AWS CodeStar project.</p></td>
</tr>
<tr class="even">
<td><code
id="codestar_associate_team_member_:_projectRole">projectRole</code></td>
<td><p>[required] The AWS CodeStar project role that will apply to this
user. This role determines what actions a user can take in an AWS
CodeStar project.</p></td>
</tr>
<tr class="odd">
<td><code
id="codestar_associate_team_member_:_remoteAccessAllowed">remoteAccessAllowed</code></td>
<td><p>Whether the team member is allowed to use an SSH public/private
key pair to remotely access project resources, for example Amazon EC2
instances.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      clientRequestToken = "string"
    )

### Request syntax

    svc$associate_team_member(
      projectId = "string",
      clientRequestToken = "string",
      userArn = "string",
      projectRole = "string",
      remoteAccessAllowed = TRUE|FALSE
    )
