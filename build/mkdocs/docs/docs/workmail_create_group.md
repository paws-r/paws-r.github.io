<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_create_group</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a group that can be used in WorkMail by calling the RegisterToWorkMail operation

### Description

Creates a group that can be used in WorkMail by calling the
`register_to_work_mail` operation.

### Usage

    workmail_create_group(OrganizationId, Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_create_group_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The organization under which the group is to be
created.</p></td>
</tr>
<tr class="even">
<td><code id="workmail_create_group_:_Name">Name</code></td>
<td><p>[required] The name of the group.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GroupId = "string"
    )

### Request syntax

    svc$create_group(
      OrganizationId = "string",
      Name = "string"
    )
