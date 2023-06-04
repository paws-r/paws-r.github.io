<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_list_object_versions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns metadata about all versions of the objects in a bucket

### Description

Returns metadata about all versions of the objects in a bucket. You can
also use request parameters as selection criteria to return metadata
about a subset of all the object versions.

To use this operation, you must have permissions to perform the
`s3:ListBucketVersions` action. Be aware of the name difference.

A 200 OK response can contain valid or invalid XML. Make sure to design
your application to parse the contents of the response and handle it
appropriately.

To use this operation, you must have READ access to the bucket.

This action is not supported by Amazon S3 on Outposts.

The following operations are related to `list_object_versions`:

-   `list_objects_v2`

-   `get_object`

-   `put_object`

-   `delete_object`

### Usage

    s3_list_object_versions(Bucket, Delimiter, EncodingType, KeyMarker,
      MaxKeys, Prefix, VersionIdMarker, ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_list_object_versions_:_Bucket">Bucket</code></td>
<td><p>[required] The bucket name that contains the objects.</p></td>
</tr>
<tr class="even">
<td><code id="s3_list_object_versions_:_Delimiter">Delimiter</code></td>
<td><p>A delimiter is a character that you specify to group keys. All
keys that contain the same string between the <code>prefix</code> and
the first occurrence of the delimiter are grouped under a single result
element in CommonPrefixes. These groups are counted as one result
against the max-keys limitation. These keys are not returned elsewhere
in the response.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_list_object_versions_:_EncodingType">EncodingType</code></td>
<td></td>
</tr>
<tr class="even">
<td><code id="s3_list_object_versions_:_KeyMarker">KeyMarker</code></td>
<td><p>Specifies the key to start with when listing objects in a
bucket.</p></td>
</tr>
<tr class="odd">
<td><code id="s3_list_object_versions_:_MaxKeys">MaxKeys</code></td>
<td><p>Sets the maximum number of keys returned in the response. By
default the action returns up to 1,000 key names. The response might
contain fewer keys but will never contain more. If additional keys
satisfy the search criteria, but were not returned because max-keys was
exceeded, the response contains
\&lt;isTruncated\&gt;true\&lt;/isTruncated\&gt;. To return the
additional keys, see key-marker and version-id-marker.</p></td>
</tr>
<tr class="even">
<td><code id="s3_list_object_versions_:_Prefix">Prefix</code></td>
<td><p>Use this parameter to select only those keys that begin with the
specified prefix. You can use prefixes to separate a bucket into
different groupings of keys. (You can think of using prefix to make
groups in the same way you'd use a folder in a file system.) You can use
prefix with delimiter to roll up numerous objects into a single result
under CommonPrefixes.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_list_object_versions_:_VersionIdMarker">VersionIdMarker</code></td>
<td><p>Specifies the object version you want to start listing
from.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_list_object_versions_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
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
      IsTruncated = TRUE|FALSE,
      KeyMarker = "string",
      VersionIdMarker = "string",
      NextKeyMarker = "string",
      NextVersionIdMarker = "string",
      Versions = list(
        list(
          ETag = "string",
          ChecksumAlgorithm = list(
            "CRC32"|"CRC32C"|"SHA1"|"SHA256"
          ),
          Size = 123,
          StorageClass = "STANDARD",
          Key = "string",
          VersionId = "string",
          IsLatest = TRUE|FALSE,
          LastModified = as.POSIXct(
            "2015-01-01"
          ),
          Owner = list(
            DisplayName = "string",
            ID = "string"
          )
        )
      ),
      DeleteMarkers = list(
        list(
          Owner = list(
            DisplayName = "string",
            ID = "string"
          ),
          Key = "string",
          VersionId = "string",
          IsLatest = TRUE|FALSE,
          LastModified = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      Name = "string",
      Prefix = "string",
      Delimiter = "string",
      MaxKeys = 123,
      CommonPrefixes = list(
        list(
          Prefix = "string"
        )
      ),
      EncodingType = "url"
    )

### Request syntax

    svc$list_object_versions(
      Bucket = "string",
      Delimiter = "string",
      EncodingType = "url",
      KeyMarker = "string",
      MaxKeys = 123,
      Prefix = "string",
      VersionIdMarker = "string",
      ExpectedBucketOwner = "string"
    )

### Examples

    ## Not run: 
    # The following example return versions of an object with specific key
    # name prefix. The request limits the number of items returned to two. If
    # there are are more than two object version, S3 returns NextToken in the
    # response. You can specify this token value in your next request to fetch
    # next set of object versions.
    svc$list_object_versions(
      Bucket = "examplebucket",
      Prefix = "HappyFace.jpg"
    )

    ## End(Not run)
