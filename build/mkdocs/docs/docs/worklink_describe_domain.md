<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>worklink_describe_domain</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides information about the domain

### Description

Provides information about the domain.

### Usage

    worklink_describe_domain(FleetArn, DomainName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="worklink_describe_domain_:_FleetArn">FleetArn</code></td>
<td><p>[required] The ARN of the fleet.</p></td>
</tr>
<tr class="even">
<td><code
id="worklink_describe_domain_:_DomainName">DomainName</code></td>
<td><p>[required] The name of the domain.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DomainName = "string",
      DisplayName = "string",
      CreatedTime = as.POSIXct(
        "2015-01-01"
      ),
      DomainStatus = "PENDING_VALIDATION"|"ASSOCIATING"|"ACTIVE"|"INACTIVE"|"DISASSOCIATING"|"DISASSOCIATED"|"FAILED_TO_ASSOCIATE"|"FAILED_TO_DISASSOCIATE",
      AcmCertificateArn = "string"
    )

### Request syntax

    svc$describe_domain(
      FleetArn = "string",
      DomainName = "string"
    )
