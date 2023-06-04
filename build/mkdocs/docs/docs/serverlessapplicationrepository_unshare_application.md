<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>serverlessapplicationrepository_unshare_application</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Unshares an application from an AWS Organization

### Description

Unshares an application from an AWS Organization.

This operation can be called only from the organization's master
account.

### Usage

    serverlessapplicationrepository_unshare_application(ApplicationId,
      OrganizationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="serverlessapplicationrepository_unshare_application_:_ApplicationId">ApplicationId</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the
application.</p></td>
</tr>
<tr class="even">
<td><code
id="serverlessapplicationrepository_unshare_application_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The AWS Organization ID to unshare the application
from.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$unshare_application(
      ApplicationId = "string",
      OrganizationId = "string"
    )
