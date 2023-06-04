<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>docdb_delete_global_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a global cluster

### Description

Deletes a global cluster. The primary and secondary clusters must
already be detached or deleted before attempting to delete a global
cluster.

This action only applies to Amazon DocumentDB clusters.

### Usage

    docdb_delete_global_cluster(GlobalClusterIdentifier)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="docdb_delete_global_cluster_:_GlobalClusterIdentifier">GlobalClusterIdentifier</code></td>
<td><p>[required] The cluster identifier of the global cluster being
deleted.</p></td>
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
            IsWriter = TRUE|FALSE
          )
        )
      )
    )

### Request syntax

    svc$delete_global_cluster(
      GlobalClusterIdentifier = "string"
    )
