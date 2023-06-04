<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_describe_clusters</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns properties of provisioned clusters including general cluster properties, cluster database properties, maintenance and backup properties, and security and access properties

### Description

Returns properties of provisioned clusters including general cluster
properties, cluster database properties, maintenance and backup
properties, and security and access properties. This operation supports
pagination. For more information about managing clusters, go to [Amazon
Redshift
Clusters](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html)
in the *Amazon Redshift Cluster Management Guide*.

If you specify both tag keys and tag values in the same request, Amazon
Redshift returns all clusters that match any combination of the
specified keys and values. For example, if you have `owner` and
`environment` for tag keys, and `admin` and `test` for tag values, all
clusters that have any combination of those values are returned.

If both tag keys and values are omitted from the request, clusters are
returned regardless of whether they have tag keys or values associated
with them.

### Usage

    redshift_describe_clusters(ClusterIdentifier, MaxRecords, Marker,
      TagKeys, TagValues)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_describe_clusters_:_ClusterIdentifier">ClusterIdentifier</code></td>
<td><p>The unique identifier of a cluster whose properties you are
requesting. This parameter is case sensitive.</p>
<p>The default is that all clusters defined for an account are
returned.</p></td>
</tr>
<tr class="even">
<td><code
id="redshift_describe_clusters_:_MaxRecords">MaxRecords</code></td>
<td><p>The maximum number of response records to return in each call. If
the number of remaining response records exceeds the specified
<code>MaxRecords</code> value, a value is returned in a
<code>marker</code> field of the response. You can retrieve the next set
of records by retrying the command with the returned marker value.</p>
<p>Default: <code>100</code></p>
<p>Constraints: minimum 20, maximum 100.</p></td>
</tr>
<tr class="odd">
<td><code id="redshift_describe_clusters_:_Marker">Marker</code></td>
<td><p>An optional parameter that specifies the starting point to return
a set of response records. When the results of a
<code>describe_clusters</code> request exceed the value specified in
<code>MaxRecords</code>, Amazon Web Services returns a value in the
<code>Marker</code> field of the response. You can retrieve the next set
of response records by providing the returned marker value in the
<code>Marker</code> parameter and retrying the request.</p>
<p>Constraints: You can specify either the
<strong>ClusterIdentifier</strong> parameter or the
<strong>Marker</strong> parameter, but not both.</p></td>
</tr>
<tr class="even">
<td><code id="redshift_describe_clusters_:_TagKeys">TagKeys</code></td>
<td><p>A tag key or keys for which you want to return all matching
clusters that are associated with the specified key or keys. For
example, suppose that you have clusters that are tagged with keys called
<code>owner</code> and <code>environment</code>. If you specify both of
these tag keys in the request, Amazon Redshift returns a response with
the clusters that have either or both of these tag keys associated with
them.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_describe_clusters_:_TagValues">TagValues</code></td>
<td><p>A tag value or values for which you want to return all matching
clusters that are associated with the specified tag value or values. For
example, suppose that you have clusters that are tagged with values
called <code>admin</code> and <code>test</code>. If you specify both of
these tag values in the request, Amazon Redshift returns a response with
the clusters that have either or both of these tag values associated
with them.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Marker = "string",
      Clusters = list(
        list(
          ClusterIdentifier = "string",
          NodeType = "string",
          ClusterStatus = "string",
          ClusterAvailabilityStatus = "string",
          ModifyStatus = "string",
          MasterUsername = "string",
          DBName = "string",
          Endpoint = list(
            Address = "string",
            Port = 123,
            VpcEndpoints = list(
              list(
                VpcEndpointId = "string",
                VpcId = "string",
                NetworkInterfaces = list(
                  list(
                    NetworkInterfaceId = "string",
                    SubnetId = "string",
                    PrivateIpAddress = "string",
                    AvailabilityZone = "string"
                  )
                )
              )
            )
          ),
          ClusterCreateTime = as.POSIXct(
            "2015-01-01"
          ),
          AutomatedSnapshotRetentionPeriod = 123,
          ManualSnapshotRetentionPeriod = 123,
          ClusterSecurityGroups = list(
            list(
              ClusterSecurityGroupName = "string",
              Status = "string"
            )
          ),
          VpcSecurityGroups = list(
            list(
              VpcSecurityGroupId = "string",
              Status = "string"
            )
          ),
          ClusterParameterGroups = list(
            list(
              ParameterGroupName = "string",
              ParameterApplyStatus = "string",
              ClusterParameterStatusList = list(
                list(
                  ParameterName = "string",
                  ParameterApplyStatus = "string",
                  ParameterApplyErrorDescription = "string"
                )
              )
            )
          ),
          ClusterSubnetGroupName = "string",
          VpcId = "string",
          AvailabilityZone = "string",
          PreferredMaintenanceWindow = "string",
          PendingModifiedValues = list(
            MasterUserPassword = "string",
            NodeType = "string",
            NumberOfNodes = 123,
            ClusterType = "string",
            ClusterVersion = "string",
            AutomatedSnapshotRetentionPeriod = 123,
            ClusterIdentifier = "string",
            PubliclyAccessible = TRUE|FALSE,
            EnhancedVpcRouting = TRUE|FALSE,
            MaintenanceTrackName = "string",
            EncryptionType = "string"
          ),
          ClusterVersion = "string",
          AllowVersionUpgrade = TRUE|FALSE,
          NumberOfNodes = 123,
          PubliclyAccessible = TRUE|FALSE,
          Encrypted = TRUE|FALSE,
          RestoreStatus = list(
            Status = "string",
            CurrentRestoreRateInMegaBytesPerSecond = 123.0,
            SnapshotSizeInMegaBytes = 123,
            ProgressInMegaBytes = 123,
            ElapsedTimeInSeconds = 123,
            EstimatedTimeToCompletionInSeconds = 123
          ),
          DataTransferProgress = list(
            Status = "string",
            CurrentRateInMegaBytesPerSecond = 123.0,
            TotalDataInMegaBytes = 123,
            DataTransferredInMegaBytes = 123,
            EstimatedTimeToCompletionInSeconds = 123,
            ElapsedTimeInSeconds = 123
          ),
          HsmStatus = list(
            HsmClientCertificateIdentifier = "string",
            HsmConfigurationIdentifier = "string",
            Status = "string"
          ),
          ClusterSnapshotCopyStatus = list(
            DestinationRegion = "string",
            RetentionPeriod = 123,
            ManualSnapshotRetentionPeriod = 123,
            SnapshotCopyGrantName = "string"
          ),
          ClusterPublicKey = "string",
          ClusterNodes = list(
            list(
              NodeRole = "string",
              PrivateIPAddress = "string",
              PublicIPAddress = "string"
            )
          ),
          ElasticIpStatus = list(
            ElasticIp = "string",
            Status = "string"
          ),
          ClusterRevisionNumber = "string",
          Tags = list(
            list(
              Key = "string",
              Value = "string"
            )
          ),
          KmsKeyId = "string",
          EnhancedVpcRouting = TRUE|FALSE,
          IamRoles = list(
            list(
              IamRoleArn = "string",
              ApplyStatus = "string"
            )
          ),
          PendingActions = list(
            "string"
          ),
          MaintenanceTrackName = "string",
          ElasticResizeNumberOfNodeOptions = "string",
          DeferredMaintenanceWindows = list(
            list(
              DeferMaintenanceIdentifier = "string",
              DeferMaintenanceStartTime = as.POSIXct(
                "2015-01-01"
              ),
              DeferMaintenanceEndTime = as.POSIXct(
                "2015-01-01"
              )
            )
          ),
          SnapshotScheduleIdentifier = "string",
          SnapshotScheduleState = "MODIFYING"|"ACTIVE"|"FAILED",
          ExpectedNextSnapshotScheduleTime = as.POSIXct(
            "2015-01-01"
          ),
          ExpectedNextSnapshotScheduleTimeStatus = "string",
          NextMaintenanceWindowStartTime = as.POSIXct(
            "2015-01-01"
          ),
          ResizeInfo = list(
            ResizeType = "string",
            AllowCancelResize = TRUE|FALSE
          ),
          AvailabilityZoneRelocationStatus = "string",
          ClusterNamespaceArn = "string",
          TotalStorageCapacityInMegaBytes = 123,
          AquaConfiguration = list(
            AquaStatus = "enabled"|"disabled"|"applying",
            AquaConfigurationStatus = "enabled"|"disabled"|"auto"
          ),
          DefaultIamRoleArn = "string",
          ReservedNodeExchangeStatus = list(
            ReservedNodeExchangeRequestId = "string",
            Status = "REQUESTED"|"PENDING"|"IN_PROGRESS"|"RETRYING"|"SUCCEEDED"|"FAILED",
            RequestTime = as.POSIXct(
              "2015-01-01"
            ),
            SourceReservedNodeId = "string",
            SourceReservedNodeType = "string",
            SourceReservedNodeCount = 123,
            TargetReservedNodeOfferingId = "string",
            TargetReservedNodeType = "string",
            TargetReservedNodeCount = 123
          )
        )
      )
    )

### Request syntax

    svc$describe_clusters(
      ClusterIdentifier = "string",
      MaxRecords = 123,
      Marker = "string",
      TagKeys = list(
        "string"
      ),
      TagValues = list(
        "string"
      )
    )
