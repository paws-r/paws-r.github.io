<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudhsmv2_describe_clusters</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets information about AWS CloudHSM clusters

### Description

Gets information about AWS CloudHSM clusters.

This is a paginated operation, which means that each response might
contain only a subset of all the clusters. When the response contains
only a subset of clusters, it includes a `NextToken` value. Use this
value in a subsequent `describe_clusters` request to get more clusters.
When you receive a response with no `NextToken` (or an empty or null
value), that means there are no more clusters to get.

### Usage

    cloudhsmv2_describe_clusters(Filters, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudhsmv2_describe_clusters_:_Filters">Filters</code></td>
<td><p>One or more filters to limit the items returned in the
response.</p>
<p>Use the <code>clusterIds</code> filter to return only the specified
clusters. Specify clusters by their cluster identifier (ID).</p>
<p>Use the <code>vpcIds</code> filter to return only the clusters in the
specified virtual private clouds (VPCs). Specify VPCs by their VPC
identifier (ID).</p>
<p>Use the <code>states</code> filter to return only clusters that match
the specified state.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudhsmv2_describe_clusters_:_NextToken">NextToken</code></td>
<td><p>The <code>NextToken</code> value that you received in the
previous response. Use this value to get more clusters.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudhsmv2_describe_clusters_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of clusters to return in the response. When
there are more clusters than the number you specify, the response
contains a <code>NextToken</code> value.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Clusters = list(
        list(
          BackupPolicy = "DEFAULT",
          BackupRetentionPolicy = list(
            Type = "DAYS",
            Value = "string"
          ),
          ClusterId = "string",
          CreateTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          Hsms = list(
            list(
              AvailabilityZone = "string",
              ClusterId = "string",
              SubnetId = "string",
              EniId = "string",
              EniIp = "string",
              HsmId = "string",
              State = "CREATE_IN_PROGRESS"|"ACTIVE"|"DEGRADED"|"DELETE_IN_PROGRESS"|"DELETED",
              StateMessage = "string"
            )
          ),
          HsmType = "string",
          PreCoPassword = "string",
          SecurityGroup = "string",
          SourceBackupId = "string",
          State = "CREATE_IN_PROGRESS"|"UNINITIALIZED"|"INITIALIZE_IN_PROGRESS"|"INITIALIZED"|"ACTIVE"|"UPDATE_IN_PROGRESS"|"DELETE_IN_PROGRESS"|"DELETED"|"DEGRADED",
          StateMessage = "string",
          SubnetMapping = list(
            "string"
          ),
          VpcId = "string",
          Certificates = list(
            ClusterCsr = "string",
            HsmCertificate = "string",
            AwsHardwareCertificate = "string",
            ManufacturerHardwareCertificate = "string",
            ClusterCertificate = "string"
          ),
          TagList = list(
            list(
              Key = "string",
              Value = "string"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_clusters(
      Filters = list(
        list(
          "string"
        )
      ),
      NextToken = "string",
      MaxResults = 123
    )
