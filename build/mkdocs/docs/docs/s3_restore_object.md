<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_restore_object</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Restores an archived copy of an object back into Amazon S3

### Description

Restores an archived copy of an object back into Amazon S3

This action is not supported by Amazon S3 on Outposts.

This action performs the following types of requests:

-   `select` - Perform a select query on an archived object

-   `⁠restore an archive⁠` - Restore an archived object

For more information about the `S3` structure in the request body, see
the following:

-   `put_object`

-   [Managing Access with
    ACLs](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html)
    in the *Amazon S3 User Guide*

-   [Protecting Data Using Server-Side
    Encryption](https://docs.aws.amazon.com/AmazonS3/latest/userguide/serv-side-encryption.html)
    in the *Amazon S3 User Guide*

Define the SQL expression for the `SELECT` type of restoration for your
query in the request body's `SelectParameters` structure. You can use
expressions like the following examples.

-   The following expression returns all records from the specified
    object.

    `⁠SELECT * FROM Object⁠`

-   Assuming that you are not using any headers for data stored in the
    object, you can specify columns with positional headers.

    `⁠SELECT s._1, s._2 FROM Object s WHERE s._3 > 100⁠`

-   If you have headers and you set the `fileHeaderInfo` in the `CSV`
    structure in the request body to `USE`, you can specify headers in
    the query. (If you set the `fileHeaderInfo` field to `IGNORE`, the
    first row is skipped for the query.) You cannot mix ordinal
    positions with header column names.

    `⁠SELECT s.Id, s.FirstName, s.SSN FROM S3Object s⁠`

When making a select request, you can also do the following:

-   To expedite your queries, specify the `Expedited` tier. For more
    information about tiers, see "Restoring Archives," later in this
    topic.

-   Specify details about the data serialization format of both the
    input object that is being queried and the serialization of the
    CSV-encoded query results.

The following are additional important facts about the select feature:

-   The output results are new Amazon S3 objects. Unlike archive
    retrievals, they are stored until explicitly deleted-manually or
    through a lifecycle configuration.

-   You can issue more than one select request on the same Amazon S3
    object. Amazon S3 doesn't duplicate requests, so avoid issuing
    duplicate requests.

-   Amazon S3 accepts a select request even if the object has already
    been restored. A select request doesn’t return error response `409`.

#### Permissions

To use this operation, you must have permissions to perform the
`s3:RestoreObject` action. The bucket owner has this permission by
default and can grant this permission to others. For more information
about permissions, see [Permissions Related to Bucket Subresource
Operations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html#using-with-s3-actions-related-to-bucket-subresources)
and [Managing Access Permissions to Your Amazon S3
Resources](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-access-control.html)
in the *Amazon S3 User Guide*.

#### Restoring objects

Objects that you archive to the S3 Glacier Flexible Retrieval or S3
Glacier Deep Archive storage class, and S3 Intelligent-Tiering Archive
or S3 Intelligent-Tiering Deep Archive tiers, are not accessible in real
time. For objects in the S3 Glacier Flexible Retrieval or S3 Glacier
Deep Archive storage classes, you must first initiate a restore request,
and then wait until a temporary copy of the object is available. If you
want a permanent copy of the object, create a copy of it in the Amazon
S3 Standard storage class in your S3 bucket. To access an archived
object, you must restore the object for the duration (number of days)
that you specify. For objects in the Archive Access or Deep Archive
Access tiers of S3 Intelligent-Tiering, you must first initiate a
restore request, and then wait until the object is moved into the
Frequent Access tier.

To restore a specific object version, you can provide a version ID. If
you don't provide a version ID, Amazon S3 restores the current version.

When restoring an archived object, you can specify one of the following
data access tier options in the `Tier` element of the request body:

-   `Expedited` - Expedited retrievals allow you to quickly access your
    data stored in the S3 Glacier Flexible Retrieval storage class or S3
    Intelligent-Tiering Archive tier when occasional urgent requests for
    restoring archives are required. For all but the largest archived
    objects (250 MB+), data accessed using Expedited retrievals is
    typically made available within 1–5 minutes. Provisioned capacity
    ensures that retrieval capacity for Expedited retrievals is
    available when you need it. Expedited retrievals and provisioned
    capacity are not available for objects stored in the S3 Glacier Deep
    Archive storage class or S3 Intelligent-Tiering Deep Archive tier.

-   `Standard` - Standard retrievals allow you to access any of your
    archived objects within several hours. This is the default option
    for retrieval requests that do not specify the retrieval option.
    Standard retrievals typically finish within 3–5 hours for objects
    stored in the S3 Glacier Flexible Retrieval storage class or S3
    Intelligent-Tiering Archive tier. They typically finish within 12
    hours for objects stored in the S3 Glacier Deep Archive storage
    class or S3 Intelligent-Tiering Deep Archive tier. Standard
    retrievals are free for objects stored in S3 Intelligent-Tiering.

-   `Bulk` - Bulk retrievals free for objects stored in the S3 Glacier
    Flexible Retrieval and S3 Intelligent-Tiering storage classes,
    enabling you to retrieve large amounts, even petabytes, of data at
    no cost. Bulk retrievals typically finish within 5–12 hours for
    objects stored in the S3 Glacier Flexible Retrieval storage class or
    S3 Intelligent-Tiering Archive tier. Bulk retrievals are also the
    lowest-cost retrieval option when restoring objects from S3 Glacier
    Deep Archive. They typically finish within 48 hours for objects
    stored in the S3 Glacier Deep Archive storage class or S3
    Intelligent-Tiering Deep Archive tier.

For more information about archive retrieval options and provisioned
capacity for `Expedited` data access, see [Restoring Archived
Objects](https://docs.aws.amazon.com/AmazonS3/latest/userguide/restoring-objects.html)
in the *Amazon S3 User Guide*.

You can use Amazon S3 restore speed upgrade to change the restore speed
to a faster speed while it is in progress. For more information, see
[Upgrading the speed of an in-progress
restore](https://docs.aws.amazon.com/AmazonS3/latest/userguide/restoring-objects.html#restoring-objects-upgrade-tier.title.html)
in the *Amazon S3 User Guide*.

To get the status of object restoration, you can send a `HEAD` request.
Operations return the `x-amz-restore` header, which provides information
about the restoration status, in the response. You can use Amazon S3
event notifications to notify you when a restore is initiated or
completed. For more information, see [Configuring Amazon S3 Event
Notifications](https://docs.aws.amazon.com/AmazonS3/latest/userguide/EventNotifications.html)
in the *Amazon S3 User Guide*.

After restoring an archived object, you can update the restoration
period by reissuing the request with a new period. Amazon S3 updates the
restoration period relative to the current time and charges only for the
request-there are no data transfer charges. You cannot update the
restoration period when Amazon S3 is actively processing your current
restore request for the object.

If your bucket has a lifecycle configuration with a rule that includes
an expiration action, the object expiration overrides the life span that
you specify in a restore request. For example, if you restore an object
copy for 10 days, but the object is scheduled to expire in 3 days,
Amazon S3 deletes the object in 3 days. For more information about
lifecycle configuration, see `put_bucket_lifecycle_configuration` and
[Object Lifecycle
Management](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lifecycle-mgmt.html)
in *Amazon S3 User Guide*.

#### Responses

A successful action returns either the `⁠200 OK⁠` or `⁠202 Accepted⁠` status
code.

-   If the object is not previously restored, then Amazon S3 returns
    `⁠202 Accepted⁠` in the response.

-   If the object is previously restored, Amazon S3 returns `⁠200 OK⁠` in
    the response.

-   Special errors:

    -   *Code: RestoreAlreadyInProgress*

    -   *Cause: Object restore is already in progress. (This error does
        not apply to SELECT type requests.)*

    -   *HTTP Status Code: 409 Conflict*

    -   *SOAP Fault Code Prefix: Client*

-   -   *Code: GlacierExpeditedRetrievalNotAvailable*

    -   *Cause: expedited retrievals are currently not available. Try
        again later. (Returned if there is insufficient capacity to
        process the Expedited request. This error applies only to
        Expedited retrievals and not to S3 Standard or Bulk
        retrievals.)*

    -   *HTTP Status Code: 503*

    -   *SOAP Fault Code Prefix: N/A*

The following operations are related to `restore_object`:

-   `put_bucket_lifecycle_configuration`

-   `get_bucket_notification_configuration`

### Usage

    s3_restore_object(Bucket, Key, VersionId, RestoreRequest, RequestPayer,
      ChecksumAlgorithm, ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_restore_object_:_Bucket">Bucket</code></td>
<td><p>[required] The bucket name containing the object to restore.</p>
<p>When using this action with an access point, you must direct requests
to the access point hostname. The access point hostname takes the form
<em>AccessPointName</em>-<em>AccountId</em>.s3-accesspoint.<em>Region</em>.amazonaws.com.
When using this action with an access point through the Amazon Web
Services SDKs, you provide the access point ARN in place of the bucket
name. For more information about access point ARNs, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html">Using
access points</a> in the <em>Amazon S3 User Guide</em>.</p>
<p>When you use this action with Amazon S3 on Outposts, you must direct
requests to the S3 on Outposts hostname. The S3 on Outposts hostname
takes the form
<code> AccessPointName-AccountId.outpostID.s3-outposts.Region.amazonaws.com</code>.
When you use this action with S3 on Outposts through the Amazon Web
Services SDKs, you provide the Outposts access point ARN in place of the
bucket name. For more information about S3 on Outposts ARNs, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html">What
is S3 on Outposts</a> in the <em>Amazon S3 User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code id="s3_restore_object_:_Key">Key</code></td>
<td><p>[required] Object key for which the action was
initiated.</p></td>
</tr>
<tr class="odd">
<td><code id="s3_restore_object_:_VersionId">VersionId</code></td>
<td><p>VersionId used to reference a specific version of the
object.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_restore_object_:_RestoreRequest">RestoreRequest</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code id="s3_restore_object_:_RequestPayer">RequestPayer</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="s3_restore_object_:_ChecksumAlgorithm">ChecksumAlgorithm</code></td>
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
<tr class="odd">
<td><code
id="s3_restore_object_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
<td><p>The account ID of the expected bucket owner. If the bucket is
owned by a different account, the request fails with the HTTP status
code <code style="white-space: pre;">⁠403 Forbidden⁠</code> (access
denied).</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RequestCharged = "requester",
      RestoreOutputPath = "string"
    )

### Request syntax

    svc$restore_object(
      Bucket = "string",
      Key = "string",
      VersionId = "string",
      RestoreRequest = list(
        Days = 123,
        GlacierJobParameters = list(
          Tier = "Standard"|"Bulk"|"Expedited"
        ),
        Type = "SELECT",
        Tier = "Standard"|"Bulk"|"Expedited",
        Description = "string",
        SelectParameters = list(
          InputSerialization = list(
            CSV = list(
              FileHeaderInfo = "USE"|"IGNORE"|"NONE",
              Comments = "string",
              QuoteEscapeCharacter = "string",
              RecordDelimiter = "string",
              FieldDelimiter = "string",
              QuoteCharacter = "string",
              AllowQuotedRecordDelimiter = TRUE|FALSE
            ),
            CompressionType = "NONE"|"GZIP"|"BZIP2",
            JSON = list(
              Type = "DOCUMENT"|"LINES"
            ),
            Parquet = list()
          ),
          ExpressionType = "SQL",
          Expression = "string",
          OutputSerialization = list(
            CSV = list(
              QuoteFields = "ALWAYS"|"ASNEEDED",
              QuoteEscapeCharacter = "string",
              RecordDelimiter = "string",
              FieldDelimiter = "string",
              QuoteCharacter = "string"
            ),
            JSON = list(
              RecordDelimiter = "string"
            )
          )
        ),
        OutputLocation = list(
          S3 = list(
            BucketName = "string",
            Prefix = "string",
            Encryption = list(
              EncryptionType = "AES256"|"aws:kms",
              KMSKeyId = "string",
              KMSContext = "string"
            ),
            CannedACL = "private"|"public-read"|"public-read-write"|"authenticated-read"|"aws-exec-read"|"bucket-owner-read"|"bucket-owner-full-control",
            AccessControlList = list(
              list(
                Grantee = list(
                  DisplayName = "string",
                  EmailAddress = "string",
                  ID = "string",
                  Type = "CanonicalUser"|"AmazonCustomerByEmail"|"Group",
                  URI = "string"
                ),
                Permission = "FULL_CONTROL"|"WRITE"|"WRITE_ACP"|"READ"|"READ_ACP"
              )
            ),
            Tagging = list(
              TagSet = list(
                list(
                  Key = "string",
                  Value = "string"
                )
              )
            ),
            UserMetadata = list(
              list(
                Name = "string",
                Value = "string"
              )
            ),
            StorageClass = "STANDARD"|"REDUCED_REDUNDANCY"|"STANDARD_IA"|"ONEZONE_IA"|"INTELLIGENT_TIERING"|"GLACIER"|"DEEP_ARCHIVE"|"OUTPOSTS"|"GLACIER_IR"|"SNOW"
          )
        )
      ),
      RequestPayer = "requester",
      ChecksumAlgorithm = "CRC32"|"CRC32C"|"SHA1"|"SHA256",
      ExpectedBucketOwner = "string"
    )

### Examples

    ## Not run: 
    # The following example restores for one day an archived copy of an object
    # back into Amazon S3 bucket.
    svc$restore_object(
      Bucket = "examplebucket",
      Key = "archivedobjectkey",
      RestoreRequest = list(
        Days = 1L,
        GlacierJobParameters = list(
          Tier = "Expedited"
        )
      )
    )

    ## End(Not run)
