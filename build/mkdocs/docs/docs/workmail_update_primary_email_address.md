<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_update_primary_email_address</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the primary email for a user, group, or resource

### Description

Updates the primary email for a user, group, or resource. The current
email is moved into the list of aliases (or swapped between an existing
alias and the current primary email), and the email provided in the
input is promoted as the primary.

### Usage

    workmail_update_primary_email_address(OrganizationId, EntityId, Email)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_update_primary_email_address_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The organization that contains the user, group, or
resource to update.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_update_primary_email_address_:_EntityId">EntityId</code></td>
<td><p>[required] The user, group, or resource to update.</p></td>
</tr>
<tr class="odd">
<td><code
id="workmail_update_primary_email_address_:_Email">Email</code></td>
<td><p>[required] The value of the email to be updated as
primary.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_primary_email_address(
      OrganizationId = "string",
      EntityId = "string",
      Email = "string"
    )
