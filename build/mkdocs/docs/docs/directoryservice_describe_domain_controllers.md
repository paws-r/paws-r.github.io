<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>directoryservice_describe_domain_controllers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides information about any domain controllers in your directory

### Description

Provides information about any domain controllers in your directory.

### Usage

    directoryservice_describe_domain_controllers(DirectoryId,
      DomainControllerIds, NextToken, Limit)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="directoryservice_describe_domain_controllers_:_DirectoryId">DirectoryId</code></td>
<td><p>[required] Identifier of the directory for which to retrieve the
domain controller information.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_describe_domain_controllers_:_DomainControllerIds">DomainControllerIds</code></td>
<td><p>A list of identifiers for the domain controllers whose
information will be provided.</p></td>
</tr>
<tr class="odd">
<td><code
id="directoryservice_describe_domain_controllers_:_NextToken">NextToken</code></td>
<td><p>The <em>DescribeDomainControllers.NextToken</em> value from a
previous call to <code>describe_domain_controllers</code>. Pass null if
this is the first call.</p></td>
</tr>
<tr class="even">
<td><code
id="directoryservice_describe_domain_controllers_:_Limit">Limit</code></td>
<td><p>The maximum number of items to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DomainControllers = list(
        list(
          DirectoryId = "string",
          DomainControllerId = "string",
          DnsIpAddr = "string",
          VpcId = "string",
          SubnetId = "string",
          AvailabilityZone = "string",
          Status = "Creating"|"Active"|"Impaired"|"Restoring"|"Deleting"|"Deleted"|"Failed",
          StatusReason = "string",
          LaunchTime = as.POSIXct(
            "2015-01-01"
          ),
          StatusLastUpdatedDateTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_domain_controllers(
      DirectoryId = "string",
      DomainControllerIds = list(
        "string"
      ),
      NextToken = "string",
      Limit = 123
    )
