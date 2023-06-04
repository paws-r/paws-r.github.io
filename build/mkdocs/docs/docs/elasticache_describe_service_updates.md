<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticache_describe_service_updates</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns details of the service updates

### Description

Returns details of the service updates

### Usage

    elasticache_describe_service_updates(ServiceUpdateName,
      ServiceUpdateStatus, MaxRecords, Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="elasticache_describe_service_updates_:_ServiceUpdateName">ServiceUpdateName</code></td>
<td><p>The unique ID of the service update</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_describe_service_updates_:_ServiceUpdateStatus">ServiceUpdateStatus</code></td>
<td><p>The status of the service update</p></td>
</tr>
<tr class="odd">
<td><code
id="elasticache_describe_service_updates_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response</p></td>
</tr>
<tr class="even">
<td><code
id="elasticache_describe_service_updates_:_Marker">Marker</code></td>
<td><p>An optional marker returned from a prior request. Use this marker
for pagination of results from this operation. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by <code>MaxRecords</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Marker = "string",
      ServiceUpdates = list(
        list(
          ServiceUpdateName = "string",
          ServiceUpdateReleaseDate = as.POSIXct(
            "2015-01-01"
          ),
          ServiceUpdateEndDate = as.POSIXct(
            "2015-01-01"
          ),
          ServiceUpdateSeverity = "critical"|"important"|"medium"|"low",
          ServiceUpdateRecommendedApplyByDate = as.POSIXct(
            "2015-01-01"
          ),
          ServiceUpdateStatus = "available"|"cancelled"|"expired",
          ServiceUpdateDescription = "string",
          ServiceUpdateType = "security-update",
          Engine = "string",
          EngineVersion = "string",
          AutoUpdateAfterRecommendedApplyByDate = TRUE|FALSE,
          EstimatedUpdateTime = "string"
        )
      )
    )

### Request syntax

    svc$describe_service_updates(
      ServiceUpdateName = "string",
      ServiceUpdateStatus = list(
        "available"|"cancelled"|"expired"
      ),
      MaxRecords = 123,
      Marker = "string"
    )
