<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_describe_user</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides information regarding the user

### Description

Provides information regarding the user.

### Usage

    workmail_describe_user(OrganizationId, UserId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_describe_user_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The identifier for the organization under which the
user exists.</p></td>
</tr>
<tr class="even">
<td><code id="workmail_describe_user_:_UserId">UserId</code></td>
<td><p>[required] The identifier for the user to be described.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      UserId = "string",
      Name = "string",
      Email = "string",
      DisplayName = "string",
      State = "ENABLED"|"DISABLED"|"DELETED",
      UserRole = "USER"|"RESOURCE"|"SYSTEM_USER",
      EnabledDate = as.POSIXct(
        "2015-01-01"
      ),
      DisabledDate = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$describe_user(
      OrganizationId = "string",
      UserId = "string"
    )
