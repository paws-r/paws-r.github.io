<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codestar_update_team_member</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a team member's attributes in an AWS CodeStar project

### Description

Updates a team member's attributes in an AWS CodeStar project. For
example, you can change a team member's role in the project, or change
whether they have remote access to project resources.

### Usage

    codestar_update_team_member(projectId, userArn, projectRole,
      remoteAccessAllowed)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codestar_update_team_member_:_projectId">projectId</code></td>
<td><p>[required] The ID of the project.</p></td>
</tr>
<tr class="even">
<td><code id="codestar_update_team_member_:_userArn">userArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the user for whom
you want to change team membership attributes.</p></td>
</tr>
<tr class="odd">
<td><code
id="codestar_update_team_member_:_projectRole">projectRole</code></td>
<td><p>The role assigned to the user in the project. Project roles have
different levels of access. For more information, see <a
href="https://docs.aws.amazon.com/codestar/latest/userguide/working-with-teams.html">Working
with Teams</a> in the <em>AWS CodeStar User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="codestar_update_team_member_:_remoteAccessAllowed">remoteAccessAllowed</code></td>
<td><p>Whether a team member is allowed to remotely access project
resources using the SSH public key associated with the user's profile.
Even if this is set to True, the user must associate a public key with
their profile before the user can access resources.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      userArn = "string",
      projectRole = "string",
      remoteAccessAllowed = TRUE|FALSE
    )

### Request syntax

    svc$update_team_member(
      projectId = "string",
      userArn = "string",
      projectRole = "string",
      remoteAccessAllowed = TRUE|FALSE
    )
