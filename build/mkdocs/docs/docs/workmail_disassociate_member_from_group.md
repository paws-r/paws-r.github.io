<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_disassociate_member_from_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes a member from a group

### Description

Removes a member from a group.

### Usage

    workmail_disassociate_member_from_group(OrganizationId, GroupId,
      MemberId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_disassociate_member_from_group_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The identifier for the organization under which the
group exists.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_disassociate_member_from_group_:_GroupId">GroupId</code></td>
<td><p>[required] The identifier for the group from which members are
removed.</p></td>
</tr>
<tr class="odd">
<td><code
id="workmail_disassociate_member_from_group_:_MemberId">MemberId</code></td>
<td><p>[required] The identifier for the member to be removed to the
group.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$disassociate_member_from_group(
      OrganizationId = "string",
      GroupId = "string",
      MemberId = "string"
    )
