<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>docdb_describe_pending_maintenance_actions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of resources (for example, instances) that have at least one pending maintenance action

### Description

Returns a list of resources (for example, instances) that have at least
one pending maintenance action.

### Usage

    docdb_describe_pending_maintenance_actions(ResourceIdentifier, Filters,
      Marker, MaxRecords)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="docdb_describe_pending_maintenance_actions_:_ResourceIdentifier">ResourceIdentifier</code></td>
<td><p>The ARN of a resource to return pending maintenance actions
for.</p></td>
</tr>
<tr class="even">
<td><code
id="docdb_describe_pending_maintenance_actions_:_Filters">Filters</code></td>
<td><p>A filter that specifies one or more resources to return pending
maintenance actions for.</p>
<p>Supported filters:</p>
<ul>
<li><p><code>db-cluster-id</code> - Accepts cluster identifiers and
cluster Amazon Resource Names (ARNs). The results list includes only
pending maintenance actions for the clusters identified by these
ARNs.</p></li>
<li><p><code>db-instance-id</code> - Accepts instance identifiers and
instance ARNs. The results list includes only pending maintenance
actions for the DB instances identified by these ARNs.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="docdb_describe_pending_maintenance_actions_:_Marker">Marker</code></td>
<td><p>An optional pagination token provided by a previous request. If
this parameter is specified, the response includes only records beyond
the marker, up to the value specified by
<code>MaxRecords</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="docdb_describe_pending_maintenance_actions_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of records to include in the response. If more
records exist than the specified <code>MaxRecords</code> value, a
pagination token (marker) is included in the response so that the
remaining results can be retrieved.</p>
<p>Default: 100</p>
<p>Constraints: Minimum 20, maximum 100.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      PendingMaintenanceActions = list(
        list(
          ResourceIdentifier = "string",
          PendingMaintenanceActionDetails = list(
            list(
              Action = "string",
              AutoAppliedAfterDate = as.POSIXct(
                "2015-01-01"
              ),
              ForcedApplyDate = as.POSIXct(
                "2015-01-01"
              ),
              OptInStatus = "string",
              CurrentApplyDate = as.POSIXct(
                "2015-01-01"
              ),
              Description = "string"
            )
          )
        )
      ),
      Marker = "string"
    )

### Request syntax

    svc$describe_pending_maintenance_actions(
      ResourceIdentifier = "string",
      Filters = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      Marker = "string",
      MaxRecords = 123
    )
