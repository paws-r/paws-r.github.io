<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_delete_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a group from WorkMail

### Description

Deletes a group from WorkMail.

### Usage

    workmail_delete_group(OrganizationId, GroupId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_delete_group_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The organization that contains the group.</p></td>
</tr>
<tr class="even">
<td><code id="workmail_delete_group_:_GroupId">GroupId</code></td>
<td><p>[required] The identifier of the group to be deleted.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_group(
      OrganizationId = "string",
      GroupId = "string"
    )
