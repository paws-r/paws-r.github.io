<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshiftserverless_restore_from_snapshot</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Restores a namespace from a snapshot

### Description

Restores a namespace from a snapshot.

### Usage

    redshiftserverless_restore_from_snapshot(namespaceName, ownerAccount,
      snapshotArn, snapshotName, workgroupName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshiftserverless_restore_from_snapshot_:_namespaceName">namespaceName</code></td>
<td><p>[required] The name of the namespace to restore the snapshot
to.</p></td>
</tr>
<tr class="even">
<td><code
id="redshiftserverless_restore_from_snapshot_:_ownerAccount">ownerAccount</code></td>
<td><p>The Amazon Web Services account that owns the snapshot.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshiftserverless_restore_from_snapshot_:_snapshotArn">snapshotArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the snapshot to restore from.
Required if restoring from Amazon Redshift Serverless to a provisioned
cluster. Must not be specified at the same time as
<code>snapshotName</code>.</p>
<p>The format of the ARN is
arn:aws:redshift:\&lt;region\&gt;:\&lt;account_id\&gt;:snapshot:\&lt;cluster_identifier\&gt;/\&lt;snapshot_identifier\&gt;.</p></td>
</tr>
<tr class="even">
<td><code
id="redshiftserverless_restore_from_snapshot_:_snapshotName">snapshotName</code></td>
<td><p>The name of the snapshot to restore from. Must not be specified
at the same time as <code>snapshotArn</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshiftserverless_restore_from_snapshot_:_workgroupName">workgroupName</code></td>
<td><p>[required] The name of the workgroup used to restore the
snapshot.</p></td>
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
      ),
      ownerAccount = "string",
      snapshotName = "string"
    )

### Request syntax

    svc$restore_from_snapshot(
      namespaceName = "string",
      ownerAccount = "string",
      snapshotArn = "string",
      snapshotName = "string",
      workgroupName = "string"
    )
