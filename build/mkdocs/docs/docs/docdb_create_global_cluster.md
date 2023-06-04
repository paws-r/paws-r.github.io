<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>docdb_create_global_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an Amazon DocumentDB global cluster that can span multiple multiple Amazon Web Services Regions

### Description

Creates an Amazon DocumentDB global cluster that can span multiple
multiple Amazon Web Services Regions. The global cluster contains one
primary cluster with read-write capability, and up-to give read-only
secondary clusters. Global clusters uses storage-based fast replication
across regions with latencies less than one second, using dedicated
infrastructure with no impact to your workload’s performance.

You can create a global cluster that is initially empty, and then add a
primary and a secondary to it. Or you can specify an existing cluster
during the create operation, and this cluster becomes the primary of the
global cluster.

This action only applies to Amazon DocumentDB clusters.

### Usage

    docdb_create_global_cluster(GlobalClusterIdentifier,
      SourceDBClusterIdentifier, Engine, EngineVersion, DeletionProtection,
      DatabaseName, StorageEncrypted)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="docdb_create_global_cluster_:_GlobalClusterIdentifier">GlobalClusterIdentifier</code></td>
<td><p>[required] The cluster identifier of the new global
cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="docdb_create_global_cluster_:_SourceDBClusterIdentifier">SourceDBClusterIdentifier</code></td>
<td><p>The Amazon Resource Name (ARN) to use as the primary cluster of
the global cluster. This parameter is optional.</p></td>
</tr>
<tr class="odd">
<td><code id="docdb_create_global_cluster_:_Engine">Engine</code></td>
<td><p>The name of the database engine to be used for this
cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="docdb_create_global_cluster_:_EngineVersion">EngineVersion</code></td>
<td><p>The engine version of the global cluster.</p></td>
</tr>
<tr class="odd">
<td><code
id="docdb_create_global_cluster_:_DeletionProtection">DeletionProtection</code></td>
<td><p>The deletion protection setting for the new global cluster. The
global cluster can't be deleted when deletion protection is
enabled.</p></td>
</tr>
<tr class="even">
<td><code
id="docdb_create_global_cluster_:_DatabaseName">DatabaseName</code></td>
<td><p>The name for your database of up to 64 alpha-numeric characters.
If you do not provide a name, Amazon DocumentDB will not create a
database in the global cluster you are creating.</p></td>
</tr>
<tr class="odd">
<td><code
id="docdb_create_global_cluster_:_StorageEncrypted">StorageEncrypted</code></td>
<td><p>The storage encryption setting for the new global
cluster.</p></td>
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

    svc$create_global_cluster(
      GlobalClusterIdentifier = "string",
      SourceDBClusterIdentifier = "string",
      Engine = "string",
      EngineVersion = "string",
      DeletionProtection = TRUE|FALSE,
      DatabaseName = "string",
      StorageEncrypted = TRUE|FALSE
    )
