<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codestar_disassociate_team_member</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes a user from a project

### Description

Removes a user from a project. Removing a user from a project also
removes the IAM policies from that user that allowed access to the
project and its resources. Disassociating a team member does not remove
that user's profile from AWS CodeStar. It does not remove the user from
IAM.

### Usage

    codestar_disassociate_team_member(projectId, userArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codestar_disassociate_team_member_:_projectId">projectId</code></td>
<td><p>[required] The ID of the AWS CodeStar project from which you want
to remove a team member.</p></td>
</tr>
<tr class="even">
<td><code
id="codestar_disassociate_team_member_:_userArn">userArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the IAM user or
group whom you want to remove from the project.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disassociate_team_member(
      projectId = "string",
      userArn = "string"
    )
