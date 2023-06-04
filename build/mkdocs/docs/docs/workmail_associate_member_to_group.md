<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_associate_member_to_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds a member (user or group) to the group's set

### Description

Adds a member (user or group) to the group's set.

### Usage

    workmail_associate_member_to_group(OrganizationId, GroupId, MemberId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_associate_member_to_group_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The organization under which the group
exists.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_associate_member_to_group_:_GroupId">GroupId</code></td>
<td><p>[required] The group to which the member (user or group) is
associated.</p></td>
</tr>
<tr class="odd">
<td><code
id="workmail_associate_member_to_group_:_MemberId">MemberId</code></td>
<td><p>[required] The member (user or group) to associate to the
group.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$associate_member_to_group(
      OrganizationId = "string",
      GroupId = "string",
      MemberId = "string"
    )
