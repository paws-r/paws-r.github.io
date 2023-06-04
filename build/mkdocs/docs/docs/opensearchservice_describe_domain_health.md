<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>opensearchservice_describe_domain_health</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about domain and node health, the standby Availability Zone, number of nodes per Availability Zone, and shard count per node

### Description

Returns information about domain and node health, the standby
Availability Zone, number of nodes per Availability Zone, and shard
count per node.

### Usage

    opensearchservice_describe_domain_health(DomainName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="opensearchservice_describe_domain_health_:_DomainName">DomainName</code></td>
<td><p>[required] The name of the domain.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DomainState = "Active"|"Processing"|"NotAvailable",
      AvailabilityZoneCount = "string",
      ActiveAvailabilityZoneCount = "string",
      StandByAvailabilityZoneCount = "string",
      DataNodeCount = "string",
      DedicatedMaster = TRUE|FALSE,
      MasterEligibleNodeCount = "string",
      WarmNodeCount = "string",
      MasterNode = "Available"|"UnAvailable",
      ClusterHealth = "Red"|"Yellow"|"Green"|"NotAvailable",
      TotalShards = "string",
      TotalUnAssignedShards = "string",
      EnvironmentInformation = list(
        list(
          AvailabilityZoneInformation = list(
            list(
              AvailabilityZoneName = "string",
              ZoneStatus = "Active"|"StandBy"|"NotAvailable",
              ConfiguredDataNodeCount = "string",
              AvailableDataNodeCount = "string",
              TotalShards = "string",
              TotalUnAssignedShards = "string"
            )
          )
        )
      )
    )

### Request syntax

    svc$describe_domain_health(
      DomainName = "string"
    )
