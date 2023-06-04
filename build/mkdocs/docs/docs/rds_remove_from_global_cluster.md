<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_remove_from_global_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Detaches an Aurora secondary cluster from an Aurora global database cluster

### Description

Detaches an Aurora secondary cluster from an Aurora global database
cluster. The cluster becomes a standalone cluster with read-write
capability instead of being read-only and receiving data from a primary
cluster in a different Region.

This action only applies to Aurora DB clusters.

### Usage

    rds_remove_from_global_cluster(GlobalClusterIdentifier,
      DbClusterIdentifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_remove_from_global_cluster_:_GlobalClusterIdentifier">GlobalClusterIdentifier</code></td>
<td><p>The cluster identifier to detach from the Aurora global database
cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_remove_from_global_cluster_:_DbClusterIdentifier">DbClusterIdentifier</code></td>
<td><p>The Amazon Resource Name (ARN) identifying the cluster that was
detached from the Aurora global database cluster.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      GlobalCluster = list(
        GlobalClusterIdentifier = "string",
        GlobalClusterResourceId = "string",
        GlobalClusterArn = "string",
        Status = "string",
        Engine = "string",
        EngineVersion = "string",
        DatabaseName = "string",
        StorageEncrypted = TRUE|FALSE,
        DeletionProtection = TRUE|FALSE,
        GlobalClusterMembers = list(
          list(
            DBClusterArn = "string",
            Readers = list(
              "string"
            ),
            IsWriter = TRUE|FALSE,
            GlobalWriteForwardingStatus = "enabled"|"disabled"|"enabling"|"disabling"|"unknown"
          )
        ),
        FailoverState = list(
          Status = "pending"|"failing-over"|"cancelling",
          FromDbClusterArn = "string",
          ToDbClusterArn = "string"
        )
      )
    )

### Request syntax

    svc$remove_from_global_cluster(
      GlobalClusterIdentifier = "string",
      DbClusterIdentifier = "string"
    )
