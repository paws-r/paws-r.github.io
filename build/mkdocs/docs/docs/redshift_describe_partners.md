<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_describe_partners</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about the partner integrations defined for a cluster

### Description

Returns information about the partner integrations defined for a
cluster.

### Usage

    redshift_describe_partners(AccountId, ClusterIdentifier, DatabaseName,
      PartnerName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_describe_partners_:_AccountId">AccountId</code></td>
<td><p>[required] The Amazon Web Services account ID that owns the
cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_describe_partners_:_ClusterIdentifier">ClusterIdentifier</code></td>
<td><p>[required] The cluster identifier of the cluster whose partner
integration is being described.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_describe_partners_:_DatabaseName">DatabaseName</code></td>
<td><p>The name of the database whose partner integration is being
described. If database name is not specified, then all databases in the
cluster are described.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_describe_partners_:_PartnerName">PartnerName</code></td>
<td><p>The name of the partner that is being described. If partner name
is not specified, then all partner integrations are described.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PartnerIntegrationInfoList = list(
        list(
          DatabaseName = "string",
          PartnerName = "string",
          Status = "Active"|"Inactive"|"RuntimeFailure"|"ConnectionFailure",
          StatusMessage = "string",
          CreatedAt = as.POSIXct(
            "2015-01-01"
          ),
          UpdatedAt = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$describe_partners(
      AccountId = "string",
      ClusterIdentifier = "string",
      DatabaseName = "string",
      PartnerName = "string"
    )
