<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshiftserverless_delete_namespace</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a namespace from Amazon Redshift Serverless

### Description

Deletes a namespace from Amazon Redshift Serverless. Before you delete
the namespace, you can create a final snapshot that has all of the data
within the namespace.

### Usage

    redshiftserverless_delete_namespace(finalSnapshotName,
      finalSnapshotRetentionPeriod, namespaceName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshiftserverless_delete_namespace_:_finalSnapshotName">finalSnapshotName</code></td>
<td><p>The name of the snapshot to be created before the namespace is
deleted.</p></td>
</tr>
<tr class="even">
<td><code
id="redshiftserverless_delete_namespace_:_finalSnapshotRetentionPeriod">finalSnapshotRetentionPeriod</code></td>
<td><p>How long to retain the final snapshot.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshiftserverless_delete_namespace_:_namespaceName">namespaceName</code></td>
<td><p>[required] The name of the namespace to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      namespace = list(
        adminUsername = "string",
        creationDate = as.POSIXct(
          "2015-01-01"
        ),
        dbName = "string",
        defaultIamRoleArn = "string",
        iamRoles = list(
          "string"
        ),
        kmsKeyId = "string",
        logExports = list(
          "useractivitylog"|"userlog"|"connectionlog"
        ),
        namespaceArn = "string",
        namespaceId = "string",
        namespaceName = "string",
        status = "AVAILABLE"|"MODIFYING"|"DELETING"
      )
    )

### Request syntax

    svc$delete_namespace(
      finalSnapshotName = "string",
      finalSnapshotRetentionPeriod = 123,
      namespaceName = "string"
    )
