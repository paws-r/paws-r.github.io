<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>docdb_modify_global_cluster</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modify a setting for an Amazon DocumentDB global cluster

### Description

Modify a setting for an Amazon DocumentDB global cluster. You can change
one or more configuration parameters (for example: deletion protection),
or the global cluster identifier by specifying these parameters and the
new values in the request.

This action only applies to Amazon DocumentDB clusters.

### Usage

    docdb_modify_global_cluster(GlobalClusterIdentifier,
      NewGlobalClusterIdentifier, DeletionProtection)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="docdb_modify_global_cluster_:_GlobalClusterIdentifier">GlobalClusterIdentifier</code></td>
<td><p>[required] The identifier for the global cluster being modified.
This parameter isn't case-sensitive.</p>
<p>Constraints:</p>
<ul>
<li><p>Must match the identifier of an existing global cluster.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="docdb_modify_global_cluster_:_NewGlobalClusterIdentifier">NewGlobalClusterIdentifier</code></td>
<td><p>The new identifier for a global cluster when you modify a global
cluster. This value is stored as a lowercase string.</p>
<ul>
<li><p>Must contain from 1 to 63 letters, numbers, or hyphens</p>
<p>The first character must be a letter</p>
<p>Can't end with a hyphen or contain two consecutive hyphens</p></li>
</ul>
<p>Example: <code>my-cluster2</code></p></td>
</tr>
<tr class="odd">
<td><code
id="docdb_modify_global_cluster_:_DeletionProtection">DeletionProtection</code></td>
<td><p>Indicates if the global cluster has deletion protection enabled.
The global cluster can't be deleted when deletion protection is
enabled.</p></td>
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

    svc$modify_global_cluster(
      GlobalClusterIdentifier = "string",
      NewGlobalClusterIdentifier = "string",
      DeletionProtection = TRUE|FALSE
    )
