<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>rds_create_global_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an Aurora global database spread across multiple Amazon Web Services Regions

### Description

Creates an Aurora global database spread across multiple Amazon Web
Services Regions. The global database contains a single primary cluster
with read-write capability, and a read-only secondary cluster that
receives data from the primary cluster through high-speed replication
performed by the Aurora storage subsystem.

You can create a global database that is initially empty, and then add a
primary cluster and a secondary cluster to it. Or you can specify an
existing Aurora cluster during the create operation, and this cluster
becomes the primary cluster of the global database.

This action applies only to Aurora DB clusters.

### Usage

    rds_create_global_cluster(GlobalClusterIdentifier,
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
id="rds_create_global_cluster_:_GlobalClusterIdentifier">GlobalClusterIdentifier</code></td>
<td><p>The cluster identifier of the new global database cluster. This
parameter is stored as a lowercase string.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_global_cluster_:_SourceDBClusterIdentifier">SourceDBClusterIdentifier</code></td>
<td><p>The Amazon Resource Name (ARN) to use as the primary cluster of
the global database. This parameter is optional.</p></td>
</tr>
<tr class="odd">
<td><code id="rds_create_global_cluster_:_Engine">Engine</code></td>
<td><p>The name of the database engine to be used for this DB
cluster.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_global_cluster_:_EngineVersion">EngineVersion</code></td>
<td><p>The engine version of the Aurora global database.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_global_cluster_:_DeletionProtection">DeletionProtection</code></td>
<td><p>The deletion protection setting for the new global database. The
global database can't be deleted when deletion protection is
enabled.</p></td>
</tr>
<tr class="even">
<td><code
id="rds_create_global_cluster_:_DatabaseName">DatabaseName</code></td>
<td><p>The name for your database of up to 64 alphanumeric characters.
If you do not provide a name, Amazon Aurora will not create a database
in the global database cluster you are creating.</p></td>
</tr>
<tr class="odd">
<td><code
id="rds_create_global_cluster_:_StorageEncrypted">StorageEncrypted</code></td>
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

    svc$create_global_cluster(
      GlobalClusterIdentifier = "string",
      SourceDBClusterIdentifier = "string",
      Engine = "string",
      EngineVersion = "string",
      DeletionProtection = TRUE|FALSE,
      DatabaseName = "string",
      StorageEncrypted = TRUE|FALSE
    )
