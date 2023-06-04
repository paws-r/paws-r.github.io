<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>redshift_create_snapshot_copy_grant</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a snapshot copy grant that permits Amazon Redshift to use an encrypted symmetric key from Key Management Service (KMS) to encrypt copied snapshots in a destination region

### Description

Creates a snapshot copy grant that permits Amazon Redshift to use an
encrypted symmetric key from Key Management Service (KMS) to encrypt
copied snapshots in a destination region.

For more information about managing snapshot copy grants, go to [Amazon
Redshift Database
Encryption](https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-db-encryption.html)
in the *Amazon Redshift Cluster Management Guide*.

### Usage

    redshift_create_snapshot_copy_grant(SnapshotCopyGrantName, KmsKeyId,
      Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="redshift_create_snapshot_copy_grant_:_SnapshotCopyGrantName">SnapshotCopyGrantName</code></td>
<td><p>[required] The name of the snapshot copy grant. This name must be
unique in the region for the Amazon Web Services account.</p>
<p>Constraints:</p>
<ul>
<li><p>Must contain from 1 to 63 alphanumeric characters or
hyphens.</p></li>
<li><p>Alphabetic characters must be lowercase.</p></li>
<li><p>First character must be a letter.</p></li>
<li><p>Cannot end with a hyphen or contain two consecutive
hyphens.</p></li>
<li><p>Must be unique for all clusters within an Amazon Web Services
account.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="redshift_create_snapshot_copy_grant_:_KmsKeyId">KmsKeyId</code></td>
<td><p>The unique identifier of the encrypted symmetric key to which to
grant Amazon Redshift permission. If no key is specified, the default
key is used.</p></td>
</tr>
<tr class="odd">
<td><code
id="redshift_create_snapshot_copy_grant_:_Tags">Tags</code></td>
<td><p>A list of tag instances.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SnapshotCopyGrant = list(
        SnapshotCopyGrantName = "string",
        KmsKeyId = "string",
        Tags = list(
          list(
            Key = "string",
            Value = "string"
          )
        )
      )
    )

### Request syntax

    svc$create_snapshot_copy_grant(
      SnapshotCopyGrantName = "string",
      KmsKeyId = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
