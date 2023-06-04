<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_delete_organization</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an WorkMail organization and all underlying AWS resources managed by WorkMail as part of the organization

### Description

Deletes an WorkMail organization and all underlying AWS resources
managed by WorkMail as part of the organization. You can choose whether
to delete the associated directory. For more information, see [Removing
an
organization](https://docs.aws.amazon.com/workmail/latest/adminguide/delete_organization.html)
in the *WorkMail Administrator Guide*.

### Usage

    workmail_delete_organization(ClientToken, OrganizationId,
      DeleteDirectory)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_delete_organization_:_ClientToken">ClientToken</code></td>
<td><p>The idempotency token associated with the request.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_delete_organization_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The organization ID.</p></td>
</tr>
<tr class="odd">
<td><code
id="workmail_delete_organization_:_DeleteDirectory">DeleteDirectory</code></td>
<td><p>[required] If true, deletes the AWS Directory Service directory
associated with the organization.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OrganizationId = "string",
      State = "string"
    )

### Request syntax

    svc$delete_organization(
      ClientToken = "string",
      OrganizationId = "string",
      DeleteDirectory = TRUE|FALSE
    )
