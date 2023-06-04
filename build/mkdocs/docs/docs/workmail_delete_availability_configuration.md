<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail_delete_availability_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the AvailabilityConfiguration for the given WorkMail organization and domain

### Description

Deletes the `AvailabilityConfiguration` for the given WorkMail
organization and domain.

### Usage

    workmail_delete_availability_configuration(OrganizationId, DomainName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmail_delete_availability_configuration_:_OrganizationId">OrganizationId</code></td>
<td><p>[required] The WorkMail organization for which the
<code>AvailabilityConfiguration</code> will be deleted.</p></td>
</tr>
<tr class="even">
<td><code
id="workmail_delete_availability_configuration_:_DomainName">DomainName</code></td>
<td><p>[required] The domain for which the
<code>AvailabilityConfiguration</code> will be deleted.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_availability_configuration(
      OrganizationId = "string",
      DomainName = "string"
    )
