<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emr_list_clusters</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Provides the status of all clusters visible to this Amazon Web Services account

### Description

Provides the status of all clusters visible to this Amazon Web Services
account. Allows you to filter the list of clusters based on certain
criteria; for example, filtering by cluster creation date and time or by
status. This call returns a maximum of 50 clusters in unsorted order per
call, but returns a marker to track the paging of the cluster list
across multiple ListClusters calls.

### Usage

    emr_list_clusters(CreatedAfter, CreatedBefore, ClusterStates, Marker)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="emr_list_clusters_:_CreatedAfter">CreatedAfter</code></td>
<td><p>The creation date and time beginning value filter for listing
clusters.</p></td>
</tr>
<tr class="even">
<td><code
id="emr_list_clusters_:_CreatedBefore">CreatedBefore</code></td>
<td><p>The creation date and time end value filter for listing
clusters.</p></td>
</tr>
<tr class="odd">
<td><code
id="emr_list_clusters_:_ClusterStates">ClusterStates</code></td>
<td><p>The cluster state filters to apply when listing clusters.
Clusters that change state while this action runs may be not be returned
as expected in the list of clusters.</p></td>
</tr>
<tr class="even">
<td><code id="emr_list_clusters_:_Marker">Marker</code></td>
<td><p>The pagination token that indicates the next set of results to
retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Clusters = list(
        list(
          Id = "string",
          Name = "string",
          Status = list(
            State = "STARTING"|"BOOTSTRAPPING"|"RUNNING"|"WAITING"|"TERMINATING"|"TERMINATED"|"TERMINATED_WITH_ERRORS",
            StateChangeReason = list(
              Code = "INTERNAL_ERROR"|"VALIDATION_ERROR"|"INSTANCE_FAILURE"|"INSTANCE_FLEET_TIMEOUT"|"BOOTSTRAP_FAILURE"|"USER_REQUEST"|"STEP_FAILURE"|"ALL_STEPS_COMPLETED",
              Message = "string"
            ),
            Timeline = list(
              CreationDateTime = as.POSIXct(
                "2015-01-01"
              ),
              ReadyDateTime = as.POSIXct(
                "2015-01-01"
              ),
              EndDateTime = as.POSIXct(
                "2015-01-01"
              )
            ),
            ErrorDetails = list(
              list(
                ErrorCode = "string",
                ErrorData = list(
                  list(
                    "string"
                  )
                ),
                ErrorMessage = "string"
              )
            )
          ),
          NormalizedInstanceHours = 123,
          ClusterArn = "string",
          OutpostArn = "string"
        )
      ),
      Marker = "string"
    )

### Request syntax

    svc$list_clusters(
      CreatedAfter = as.POSIXct(
        "2015-01-01"
      ),
      CreatedBefore = as.POSIXct(
        "2015-01-01"
      ),
      ClusterStates = list(
        "STARTING"|"BOOTSTRAPPING"|"RUNNING"|"WAITING"|"TERMINATING"|"TERMINATED"|"TERMINATED_WITH_ERRORS"
      ),
      Marker = "string"
    )
