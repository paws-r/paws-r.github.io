<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_list_multipart_uploads</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This action lists in-progress multipart uploads

### Description

This action lists in-progress multipart uploads. An in-progress
multipart upload is a multipart upload that has been initiated using the
Initiate Multipart Upload request, but has not yet been completed or
aborted.

This action returns at most 1,000 multipart uploads in the response.
1,000 multipart uploads is the maximum number of uploads a response can
include, which is also the default value. You can further limit the
number of uploads in a response by specifying the `max-uploads`
parameter in the response. If additional multipart uploads satisfy the
list criteria, the response will contain an `IsTruncated` element with
the value true. To list the additional multipart uploads, use the
`key-marker` and `upload-id-marker` request parameters.

In the response, the uploads are sorted by key. If your application has
initiated more than one multipart upload using the same object key, then
uploads in the response are first sorted by key. Additionally, uploads
are sorted in ascending order within each key by the upload initiation
time.

For more information on multipart uploads, see [Uploading Objects Using
Multipart
Upload](https://docs.aws.amazon.com/AmazonS3/latest/userguide/mpuoverview.html).

For information on permissions required to use the multipart upload API,
see [Multipart Upload and
Permissions](https://docs.aws.amazon.com/AmazonS3/latest/userguide/mpuoverview.html).

The following operations are related to `list_multipart_uploads`:

-   `create_multipart_upload`

-   `upload_part`

-   `complete_multipart_upload`

-   `list_parts`

-   `abort_multipart_upload`

### Usage

    s3_list_multipart_uploads(Bucket, Delimiter, EncodingType, KeyMarker,
      MaxUploads, Prefix, UploadIdMarker, ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_list_multipart_uploads_:_Bucket">Bucket</code></td>
<td><p>[required] The name of the bucket to which the multipart upload
was initiated.</p>
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
<td><code
id="s3_list_multipart_uploads_:_Delimiter">Delimiter</code></td>
<td><p>Character you use to group keys.</p>
<p>All keys that contain the same string between the prefix, if
specified, and the first occurrence of the delimiter after the prefix
are grouped under a single result element, <code>CommonPrefixes</code>.
If you don't specify the prefix parameter, then the substring starts at
the beginning of the key. The keys that are grouped under
<code>CommonPrefixes</code> result element are not returned elsewhere in
the response.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_list_multipart_uploads_:_EncodingType">EncodingType</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="s3_list_multipart_uploads_:_KeyMarker">KeyMarker</code></td>
<td><p>Together with upload-id-marker, this parameter specifies the
multipart upload after which listing should begin.</p>
<p>If <code>upload-id-marker</code> is not specified, only the keys
lexicographically greater than the specified <code>key-marker</code>
will be included in the list.</p>
<p>If <code>upload-id-marker</code> is specified, any multipart uploads
for a key equal to the <code>key-marker</code> might also be included,
provided those multipart uploads have upload IDs lexicographically
greater than the specified <code>upload-id-marker</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_list_multipart_uploads_:_MaxUploads">MaxUploads</code></td>
<td><p>Sets the maximum number of multipart uploads, from 1 to 1,000, to
return in the response body. 1,000 is the maximum number of uploads that
can be returned in a response.</p></td>
</tr>
<tr class="even">
<td><code id="s3_list_multipart_uploads_:_Prefix">Prefix</code></td>
<td><p>Lists in-progress uploads only for those keys that begin with the
specified prefix. You can use prefixes to separate a bucket into
different grouping of keys. (You can think of using prefix to make
groups in the same way you'd use a folder in a file system.)</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_list_multipart_uploads_:_UploadIdMarker">UploadIdMarker</code></td>
<td><p>Together with key-marker, specifies the multipart upload after
which listing should begin. If key-marker is not specified, the
upload-id-marker parameter is ignored. Otherwise, any multipart uploads
for a key equal to the key-marker might be included in the list only if
they have an upload ID lexicographically greater than the specified
<code>upload-id-marker</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_list_multipart_uploads_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
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
      Bucket = "string",
      KeyMarker = "string",
      UploadIdMarker = "string",
      NextKeyMarker = "string",
      Prefix = "string",
      Delimiter = "string",
      NextUploadIdMarker = "string",
      MaxUploads = 123,
      IsTruncated = TRUE|FALSE,
      Uploads = list(
        list(
          UploadId = "string",
          Key = "string",
          Initiated = as.POSIXct(
            "2015-01-01"
          ),
          StorageClass = "STANDARD"|"REDUCED_REDUNDANCY"|"STANDARD_IA"|"ONEZONE_IA"|"INTELLIGENT_TIERING"|"GLACIER"|"DEEP_ARCHIVE"|"OUTPOSTS"|"GLACIER_IR"|"SNOW",
          Owner = list(
            DisplayName = "string",
            ID = "string"
          ),
          Initiator = list(
            ID = "string",
            DisplayName = "string"
          ),
          ChecksumAlgorithm = "CRC32"|"CRC32C"|"SHA1"|"SHA256"
        )
      ),
      CommonPrefixes = list(
        list(
          Prefix = "string"
        )
      ),
      EncodingType = "url"
    )

### Request syntax

    svc$list_multipart_uploads(
      Bucket = "string",
      Delimiter = "string",
      EncodingType = "url",
      KeyMarker = "string",
      MaxUploads = 123,
      Prefix = "string",
      UploadIdMarker = "string",
      ExpectedBucketOwner = "string"
    )

### Examples

    ## Not run: 
    # The following example lists in-progress multipart uploads on a specific
    # bucket.
    svc$list_multipart_uploads(
      Bucket = "examplebucket"
    )

    # The following example specifies the upload-id-marker and key-marker from
    # previous truncated response to retrieve next setup of multipart uploads.
    svc$list_multipart_uploads(
      Bucket = "examplebucket",
      KeyMarker = "nextkeyfrompreviousresponse",
      MaxUploads = "2",
      UploadIdMarker = "valuefrompreviousresponse"
    )

    ## End(Not run)
