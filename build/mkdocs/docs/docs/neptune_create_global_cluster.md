<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>neptune_create_global_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a Neptune global database spread across multiple Amazon Regions

### Description

Creates a Neptune global database spread across multiple Amazon Regions.
The global database contains a single primary cluster with read-write
capability, and read-only secondary clusters that receive data from the
primary cluster through high-speed replication performed by the Neptune
storage subsystem.

You can create a global database that is initially empty, and then add a
primary cluster and secondary clusters to it, or you can specify an
existing Neptune cluster during the create operation to become the
primary cluster of the global database.

### Usage

    neptune_create_global_cluster(GlobalClusterIdentifier,
      SourceDBClusterIdentifier, Engine, EngineVersion, DeletionProtection,
      StorageEncrypted)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="neptune_create_global_cluster_:_GlobalClusterIdentifier">GlobalClusterIdentifier</code></td>
<td><p>[required] The cluster identifier of the new global database
cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_create_global_cluster_:_SourceDBClusterIdentifier">SourceDBClusterIdentifier</code></td>
<td><p>(<em>Optional</em>) The Amazon Resource Name (ARN) of an existing
Neptune DB cluster to use as the primary cluster of the new global
database.</p></td>
</tr>
<tr class="odd">
<td><code id="neptune_create_global_cluster_:_Engine">Engine</code></td>
<td><p>The name of the database engine to be used in the global
database.</p>
<p>Valid values: <code>neptune</code></p></td>
</tr>
<tr class="even">
<td><code
id="neptune_create_global_cluster_:_EngineVersion">EngineVersion</code></td>
<td><p>The Neptune engine version to be used by the global database.</p>
<p>Valid values: <code style="white-space: pre;">⁠1.2.0.0⁠</code> or
above.</p></td>
</tr>
<tr class="odd">
<td><code
id="neptune_create_global_cluster_:_DeletionProtection">DeletionProtection</code></td>
<td><p>The deletion protection setting for the new global database. The
global database can't be deleted when deletion protection is
enabled.</p></td>
</tr>
<tr class="even">
<td><code
id="neptune_create_global_cluster_:_StorageEncrypted">StorageEncrypted</code></td>
<td><p>The storage encryption setting for the new global database
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
      StorageEncrypted = TRUE|FALSE
    )
