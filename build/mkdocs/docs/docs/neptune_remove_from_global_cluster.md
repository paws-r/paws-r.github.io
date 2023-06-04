<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>neptune_remove_from_global_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Detaches a Neptune DB cluster from a Neptune global database

### Description

Detaches a Neptune DB cluster from a Neptune global database. A
secondary cluster becomes a normal standalone cluster with read-write
capability instead of being read-only, and no longer receives data from
a the primary cluster.

### Usage

    neptune_remove_from_global_cluster(GlobalClusterIdentifier,
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
id="neptune_remove_from_global_cluster_:_GlobalClusterIdentifier">GlobalClusterIdentifier</code></td>
<td><p>[required] The identifier of the Neptune global database from
which to detach the specified Neptune DB cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_remove_from_global_cluster_:_DbClusterIdentifier">DbClusterIdentifier</code></td>
<td><p>[required] The Amazon Resource Name (ARN) identifying the cluster
to be detached from the Neptune global database cluster.</p></td>
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

    svc$remove_from_global_cluster(
      GlobalClusterIdentifier = "string",
      DbClusterIdentifier = "string"
    )
