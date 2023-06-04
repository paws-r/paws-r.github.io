<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_put_bucket_replication</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a replication configuration or replaces an existing one

### Description

Creates a replication configuration or replaces an existing one. For
more information, see
[Replication](https://docs.aws.amazon.com/AmazonS3/latest/userguide/replication.html)
in the *Amazon S3 User Guide*.

Specify the replication configuration in the request body. In the
replication configuration, you provide the name of the destination
bucket or buckets where you want Amazon S3 to replicate objects, the IAM
role that Amazon S3 can assume to replicate objects on your behalf, and
other relevant information.

A replication configuration must include at least one rule, and can
contain a maximum of 1,000. Each rule identifies a subset of objects to
replicate by filtering the objects in the source bucket. To choose
additional subsets of objects to replicate, add a rule for each subset.

To specify a subset of the objects in the source bucket to apply a
replication rule to, add the Filter element as a child of the Rule
element. You can filter objects based on an object key prefix, one or
more object tags, or both. When you add the Filter element in the
configuration, you must also add the following elements:
`DeleteMarkerReplication`, `Status`, and `Priority`.

If you are using an earlier version of the replication configuration,
Amazon S3 handles replication of delete markers differently. For more
information, see [Backward
Compatibility](https://docs.aws.amazon.com/AmazonS3/latest/userguide/replication-add-config.html#replication-backward-compat-considerations).

For information about enabling versioning on a bucket, see [Using
Versioning](https://docs.aws.amazon.com/AmazonS3/latest/userguide/Versioning.html).

#### Handling Replication of Encrypted Objects

By default, Amazon S3 doesn't replicate objects that are stored at rest
using server-side encryption with KMS keys. To replicate Amazon Web
Services KMS-encrypted objects, add the following:
`SourceSelectionCriteria`, `SseKmsEncryptedObjects`, `Status`,
`EncryptionConfiguration`, and `ReplicaKmsKeyID`. For information about
replication configuration, see [Replicating Objects Created with SSE
Using KMS
keys](https://docs.aws.amazon.com/AmazonS3/latest/userguide/replication-config-for-kms-objects.html).

For information on `put_bucket_replication` errors, see [List of
replication-related error
codes](https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#ReplicationErrorCodeList)

#### Permissions

To create a `put_bucket_replication` request, you must have
`s3:PutReplicationConfiguration` permissions for the bucket.

By default, a resource owner, in this case the Amazon Web Services
account that created the bucket, can perform this operation. The
resource owner can also grant others permissions to perform the
operation. For more information about permissions, see [Specifying
Permissions in a
Policy](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html)
and [Managing Access Permissions to Your Amazon S3
Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html).

To perform this operation, the user or role performing the action must
have the
[iam:PassRole](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_passrole.html)
permission.

The following operations are related to `put_bucket_replication`:

-   `get_bucket_replication`

-   `delete_bucket_replication`

### Usage

    s3_put_bucket_replication(Bucket, ContentMD5, ChecksumAlgorithm,
      ReplicationConfiguration, Token, ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_put_bucket_replication_:_Bucket">Bucket</code></td>
<td><p>[required] The name of the bucket</p></td>
</tr>
<tr class="even">
<td><code
id="s3_put_bucket_replication_:_ContentMD5">ContentMD5</code></td>
<td><p>The base64-encoded 128-bit MD5 digest of the data. You must use
this header as a message integrity check to verify that the request body
was not corrupted in transit. For more information, see <a
href="https://www.ietf.org/rfc/rfc1864.txt">RFC 1864</a>.</p>
<p>For requests made using the Amazon Web Services Command Line
Interface (CLI) or Amazon Web Services SDKs, this field is calculated
automatically.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_put_bucket_replication_:_ChecksumAlgorithm">ChecksumAlgorithm</code></td>
<td><p>Indicates the algorithm used to create the checksum for the
object when using the SDK. This header will not provide any additional
functionality if not using the SDK. When sending this header, there must
be a corresponding <code>x-amz-checksum</code> or
<code>x-amz-trailer</code> header sent. Otherwise, Amazon S3 fails the
request with the HTTP status code <code
style="white-space: pre;">⁠400 Bad Request⁠</code>. For more information,
see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html">Checking
object integrity</a> in the <em>Amazon S3 User Guide</em>.</p>
<p>If you provide an individual checksum, Amazon S3 ignores any provided
<code>ChecksumAlgorithm</code> parameter.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_put_bucket_replication_:_ReplicationConfiguration">ReplicationConfiguration</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="odd">
<td><code id="s3_put_bucket_replication_:_Token">Token</code></td>
<td><p>A token to allow Object Lock to be enabled for an existing
bucket.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_put_bucket_replication_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
<td><p>The account ID of the expected bucket owner. If the bucket is
owned by a different account, the request fails with the HTTP status
code <code style="white-space: pre;">⁠403 Forbidden⁠</code> (access
denied).</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_bucket_replication(
      Bucket = "string",
      ContentMD5 = "string",
      ChecksumAlgorithm = "CRC32"|"CRC32C"|"SHA1"|"SHA256",
      ReplicationConfiguration = list(
        Role = "string",
        Rules = list(
          list(
            ID = "string",
            Priority = 123,
            Prefix = "string",
            Filter = list(
              Prefix = "string",
              Tag = list(
                Key = "string",
                Value = "string"
              ),
              And = list(
                Prefix = "string",
                Tags = list(
                  list(
                    Key = "string",
                    Value = "string"
                  )
                )
              )
            ),
            Status = "Enabled"|"Disabled",
            SourceSelectionCriteria = list(
              SseKmsEncryptedObjects = list(
                Status = "Enabled"|"Disabled"
              ),
              ReplicaModifications = list(
                Status = "Enabled"|"Disabled"
              )
            ),
            ExistingObjectReplication = list(
              Status = "Enabled"|"Disabled"
            ),
            Destination = list(
              Bucket = "string",
              Account = "string",
              StorageClass = "STANDARD"|"REDUCED_REDUNDANCY"|"STANDARD_IA"|"ONEZONE_IA"|"INTELLIGENT_TIERING"|"GLACIER"|"DEEP_ARCHIVE"|"OUTPOSTS"|"GLACIER_IR"|"SNOW",
              AccessControlTranslation = list(
                Owner = "Destination"
              ),
              EncryptionConfiguration = list(
                ReplicaKmsKeyID = "string"
              ),
              ReplicationTime = list(
                Status = "Enabled"|"Disabled",
                Time = list(
                  Minutes = 123
                )
              ),
              Metrics = list(
                Status = "Enabled"|"Disabled",
                EventThreshold = list(
                  Minutes = 123
                )
              )
            ),
            DeleteMarkerReplication = list(
              Status = "Enabled"|"Disabled"
            )
          )
        )
      ),
      Token = "string",
      ExpectedBucketOwner = "string"
    )

### Examples

    ## Not run: 
    # The following example sets replication configuration on a bucket.
    svc$put_bucket_replication(
      Bucket = "examplebucket",
      ReplicationConfiguration = list(
        Role = "arn:aws:iam::123456789012:role/examplerole",
        Rules = list(
          list(
            Destination = list(
              Bucket = "arn:aws:s3:::destinationbucket",
              StorageClass = "STANDARD"
            ),
            Prefix = "",
            Status = "Enabled"
          )
        )
      )
    )

    ## End(Not run)
