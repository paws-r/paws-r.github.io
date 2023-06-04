<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>neptune_failover_global_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Initiates the failover process for a Neptune global database

### Description

Initiates the failover process for a Neptune global database.

A failover for a Neptune global database promotes one of secondary
read-only DB clusters to be the primary DB cluster and demotes the
primary DB cluster to being a secondary (read-only) DB cluster. In other
words, the role of the current primary DB cluster and the selected
target secondary DB cluster are switched. The selected secondary DB
cluster assumes full read/write capabilities for the Neptune global
database.

This action applies **only** to Neptune global databases. This action is
only intended for use on healthy Neptune global databases with healthy
Neptune DB clusters and no region-wide outages, to test disaster
recovery scenarios or to reconfigure the global database topology.

### Usage

    neptune_failover_global_cluster(GlobalClusterIdentifier,
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
id="neptune_failover_global_cluster_:_GlobalClusterIdentifier">GlobalClusterIdentifier</code></td>
<td><p>[required] Identifier of the Neptune global database that should
be failed over. The identifier is the unique key assigned by the user
when the Neptune global database was created. In other words, it's the
name of the global database that you want to fail over.</p>
<p>Constraints: Must match the identifier of an existing Neptune global
database.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_failover_global_cluster_:_TargetDbClusterIdentifier">TargetDbClusterIdentifier</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the secondary
Neptune DB cluster that you want to promote to primary for the global
database.</p></td>
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
        StorageEncrypted = TRUE|FALSE,
        DeletionProtection = TRUE|FALSE,
        GlobalClusterMembers = list(
          list(
            DBClusterArn = "string",
            Readers = list(
              "string"
            ),
            IsWriter = TRUE|FALSE
          )
        )
      )
    )

### Request syntax

    svc$failover_global_cluster(
      GlobalClusterIdentifier = "string",
      TargetDbClusterIdentifier = "string"
    )
