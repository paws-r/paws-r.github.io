<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_failover_global_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Initiates the failover process for an Aurora global database (GlobalCluster)

### Description

Initiates the failover process for an Aurora global database
(GlobalCluster).

A failover for an Aurora global database promotes one of secondary
read-only DB clusters to be the primary DB cluster and demotes the
primary DB cluster to being a secondary (read-only) DB cluster. In other
words, the role of the current primary DB cluster and the selected
(target) DB cluster are switched. The selected secondary DB cluster
assumes full read/write capabilities for the Aurora global database.

For more information about failing over an Amazon Aurora global
database, see [Managed planned failover for Amazon Aurora global
databases](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-global-database-disaster-recovery.html#aurora-global-database-disaster-recovery.managed-failover)
in the *Amazon Aurora User Guide*.

This action applies to GlobalCluster (Aurora global databases) only. Use
this action only on healthy Aurora global databases with running Aurora
DB clusters and no Region-wide outages, to test disaster recovery
scenarios or to reconfigure your Aurora global database topology.

### Usage

    rds_failover_global_cluster(GlobalClusterIdentifier,
      TargetDbClusterIdentifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="rds_failover_global_cluster_:_GlobalClusterIdentifier">GlobalClusterIdentifier</code></td>
<td><p>[required] Identifier of the Aurora global database
(GlobalCluster) that should be failed over. The identifier is the unique
key assigned by the user when the Aurora global database was created. In
other words, it's the name of the Aurora global database that you want
to fail over.</p>
<p>Constraints:</p>
<ul>
<li><p>Must match the identifier of an existing GlobalCluster (Aurora
global database).</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="rds_failover_global_cluster_:_TargetDbClusterIdentifier">TargetDbClusterIdentifier</code></td>
<td><p>[required] Identifier of the secondary Aurora DB cluster that you
want to promote to primary for the Aurora global database
(GlobalCluster.) Use the Amazon Resource Name (ARN) for the identifier
so that Aurora can locate the cluster in its Amazon Web Services
Region.</p></td>
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

    svc$failover_global_cluster(
      GlobalClusterIdentifier = "string",
      TargetDbClusterIdentifier = "string"
    )
