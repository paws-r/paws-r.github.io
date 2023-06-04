<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_list_access_control_rules</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the access control rules for the specified organization

### Description

Lists the access control rules for the specified organization.

### Usage

    workmail_list_access_control_rules(OrganizationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_list_access_control_rules_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The identifier for the organization.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Rules = list(
        list(
          Name = "string",
          Effect = "ALLOW"|"DENY",
          Description = "string",
          IpRanges = list(
            "string"
          ),
          NotIpRanges = list(
            "string"
          ),
          Actions = list(
            "string"
          ),
          NotActions = list(
            "string"
          ),
          UserIds = list(
            "string"
          ),
          NotUserIds = list(
            "string"
          ),
          DateCreated = as.POSIXct(
            "2015-01-01"
          ),
          DateModified = as.POSIXct(
            "2015-01-01"
          ),
          ImpersonationRoleIds = list(
            "string"
          ),
          NotImpersonationRoleIds = list(
            "string"
          )
        )
      )
    )

### Request syntax

    svc$list_access_control_rules(
      OrganizationId = "string"
    )
