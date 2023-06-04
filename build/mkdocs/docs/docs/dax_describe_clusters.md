<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>dax_describe_clusters</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about all provisioned DAX clusters if no cluster identifier is specified, or about a specific DAX cluster if a cluster identifier is supplied

### Description

Returns information about all provisioned DAX clusters if no cluster
identifier is specified, or about a specific DAX cluster if a cluster
identifier is supplied.

If the cluster is in the CREATING state, only cluster level information
will be displayed until all of the nodes are successfully provisioned.

If the cluster is in the DELETING state, only cluster level information
will be displayed.

If nodes are currently being added to the DAX cluster, node endpoint
information and creation time for the additional nodes will not be
displayed until they are completely provisioned. When the DAX cluster
state is *available*, the cluster is ready for use.

If nodes are currently being removed from the DAX cluster, no endpoint
information for the removed nodes is displayed.

### Usage

    dax_describe_clusters(ClusterNames, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="dax_describe_clusters_:_ClusterNames">ClusterNames</code></td>
<td><p>The names of the DAX clusters being described.</p></td>
</tr>
<tr class="even">
<td><code id="dax_describe_clusters_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to include in the response. If more
results exist than the specified <code>MaxResults</code> value, a token
is included in the response so that the remaining results can be
retrieved.</p>
<p>The value for <code>MaxResults</code> must be between 20 and
100.</p></td>
</tr>
<tr class="odd">
<td><code id="dax_describe_clusters_:_NextToken">NextToken</code></td>
<td><p>An optional token returned from a prior request. Use this token
for pagination of results from this action. If this parameter is
specified, the response includes only results beyond the token, up to
the value specified by <code>MaxResults</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NextToken = "string",
      Clusters = list(
        list(
          ClusterName = "string",
          Description = "string",
          ClusterArn = "string",
          TotalNodes = 123,
          ActiveNodes = 123,
          NodeType = "string",
          Status = "string",
          ClusterDiscoveryEndpoint = list(
            Address = "string",
            Port = 123,
            URL = "string"
          ),
          NodeIdsToRemove = list(
            "string"
          ),
          Nodes = list(
            list(
              NodeId = "string",
              Endpoint = list(
                Address = "string",
                Port = 123,
                URL = "string"
              ),
              NodeCreateTime = as.POSIXct(
                "2015-01-01"
              ),
              AvailabilityZone = "string",
              NodeStatus = "string",
              ParameterGroupStatus = "string"
            )
          ),
          PreferredMaintenanceWindow = "string",
          NotificationConfiguration = list(
            TopicArn = "string",
            TopicStatus = "string"
          ),
          SubnetGroup = "string",
          SecurityGroups = list(
            list(
              SecurityGroupIdentifier = "string",
              Status = "string"
            )
          ),
          IamRoleArn = "string",
          ParameterGroup = list(
            ParameterGroupName = "string",
            ParameterApplyStatus = "string",
            NodeIdsToReboot = list(
              "string"
            )
          ),
          SSEDescription = list(
            Status = "ENABLING"|"ENABLED"|"DISABLING"|"DISABLED"
          ),
          ClusterEndpointEncryptionType = "NONE"|"TLS"
        )
      )
    )

### Request syntax

    svc$describe_clusters(
      ClusterNames = list(
        "string"
      ),
      MaxResults = 123,
      NextToken = "string"
    )
