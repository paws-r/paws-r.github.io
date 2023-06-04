<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_describe_organization</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides more information regarding a given organization based on its identifier

### Description

Provides more information regarding a given organization based on its
identifier.

### Usage

    workmail_describe_organization(OrganizationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_describe_organization_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The identifier for the organization to be
described.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      OrganizationId = "string",
      Alias = "string",
      State = "string",
      DirectoryId = "string",
      DirectoryType = "string",
      DefaultMailDomain = "string",
      CompletedDate = as.POSIXct(
        "2015-01-01"
      ),
      ErrorMessage = "string",
      ARN = "string"
    )

### Request syntax

    svc$describe_organization(
      OrganizationId = "string"
    )
