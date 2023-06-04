<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_select_object_content</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## This action filters the contents of an Amazon S3 object based on a simple structured query language (SQL) statement

### Description

This action filters the contents of an Amazon S3 object based on a
simple structured query language (SQL) statement. In the request, along
with the SQL expression, you must also specify a data serialization
format (JSON, CSV, or Apache Parquet) of the object. Amazon S3 uses this
format to parse object data into records, and returns only records that
match the specified SQL expression. You must also specify the data
serialization format for the response.

This action is not supported by Amazon S3 on Outposts.

For more information about Amazon S3 Select, see [Selecting Content from
Objects](https://docs.aws.amazon.com/AmazonS3/latest/userguide/selecting-content-from-objects.html)
and [SELECT
Command](https://docs.aws.amazon.com/AmazonS3/latest/userguide/s3-select-sql-reference-select.html)
in the *Amazon S3 User Guide*.

#### Permissions

You must have `s3:GetObject` permission for this operation. Amazon S3
Select does not support anonymous access. For more information about
permissions, see [Specifying Permissions in a
Policy](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-with-s3-actions.html)
in the *Amazon S3 User Guide*.

#### Object Data Formats

You can use Amazon S3 Select to query objects that have the following
format properties:

-   *CSV, JSON, and Parquet* - Objects must be in CSV, JSON, or Parquet
    format.

-   *UTF-8* - UTF-8 is the only encoding type Amazon S3 Select supports.

-   *GZIP or BZIP2* - CSV and JSON files can be compressed using GZIP or
    BZIP2. GZIP and BZIP2 are the only compression formats that Amazon
    S3 Select supports for CSV and JSON files. Amazon S3 Select supports
    columnar compression for Parquet using GZIP or Snappy. Amazon S3
    Select does not support whole-object compression for Parquet
    objects.

-   *Server-side encryption* - Amazon S3 Select supports querying
    objects that are protected with server-side encryption.

    For objects that are encrypted with customer-provided encryption
    keys (SSE-C), you must use HTTPS, and you must use the headers that
    are documented in the `get_object`. For more information about
    SSE-C, see [Server-Side Encryption (Using Customer-Provided
    Encryption
    Keys)](https://docs.aws.amazon.com/AmazonS3/latest/userguide/ServerSideEncryptionCustomerKeys.html)
    in the *Amazon S3 User Guide*.

    For objects that are encrypted with Amazon S3 managed keys (SSE-S3)
    and Amazon Web Services KMS keys (SSE-KMS), server-side encryption
    is handled transparently, so you don't need to specify anything. For
    more information about server-side encryption, including SSE-S3 and
    SSE-KMS, see [Protecting Data Using Server-Side
    Encryption](https://docs.aws.amazon.com/AmazonS3/latest/userguide/serv-side-encryption.html)
    in the *Amazon S3 User Guide*.

#### Working with the Response Body

Given the response size is unknown, Amazon S3 Select streams the
response as a series of messages and includes a `Transfer-Encoding`
header with `chunked` as its value in the response. For more
information, see [Appendix: SelectObjectContent
Response](https://docs.aws.amazon.com/AmazonS3/latest/API/RESTSelectObjectAppendix.html).

#### GetObject Support

The `select_object_content` action does not support the following
`get_object` functionality. For more information, see `get_object`.

-   `Range`: Although you can specify a scan range for an Amazon S3
    Select request (see [SelectObjectContentRequest -
    ScanRange](https://docs.aws.amazon.com/AmazonS3/latest/API/API_SelectObjectContent.html#AmazonS3-SelectObjectContent-request-ScanRange)
    in the request parameters), you cannot specify the range of bytes of
    an object to return.

-   GLACIER, DEEP\_ARCHIVE and REDUCED\_REDUNDANCY storage classes: You
    cannot specify the GLACIER, DEEP\_ARCHIVE, or `REDUCED_REDUNDANCY`
    storage classes. For more information, about storage classes see
    [Storage
    Classes](https://docs.aws.amazon.com/AmazonS3/latest/userguide/UsingMetadata.html#storage-class-intro)
    in the *Amazon S3 User Guide*.

#### Special Errors

For a list of special errors for this operation, see [List of SELECT
Object Content Error
Codes](https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#SelectObjectContentErrorCodeList)

The following operations are related to `select_object_content`:

-   `get_object`

-   `get_bucket_lifecycle_configuration`

-   `put_bucket_lifecycle_configuration`

### Usage

    s3_select_object_content(Bucket, Key, SSECustomerAlgorithm,
      SSECustomerKey, SSECustomerKeyMD5, Expression, ExpressionType,
      RequestProgress, InputSerialization, OutputSerialization, ScanRange,
      ExpectedBucketOwner)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="s3_select_object_content_:_Bucket">Bucket</code></td>
<td><p>[required] The S3 bucket.</p></td>
</tr>
<tr class="even">
<td><code id="s3_select_object_content_:_Key">Key</code></td>
<td><p>[required] The object key.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_select_object_content_:_SSECustomerAlgorithm">SSECustomerAlgorithm</code></td>
<td><p>The server-side encryption (SSE) algorithm used to encrypt the
object. This parameter is needed only when the object was created using
a checksum algorithm. For more information, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/ServerSideEncryptionCustomerKeys.html">Protecting
data using SSE-C keys</a> in the <em>Amazon S3 User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_select_object_content_:_SSECustomerKey">SSECustomerKey</code></td>
<td><p>The server-side encryption (SSE) customer managed key. This
parameter is needed only when the object was created using a checksum
algorithm. For more information, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/ServerSideEncryptionCustomerKeys.html">Protecting
data using SSE-C keys</a> in the <em>Amazon S3 User Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_select_object_content_:_SSECustomerKeyMD5">SSECustomerKeyMD5</code></td>
<td><p>The MD5 server-side encryption (SSE) customer managed key. This
parameter is needed only when the object was created using a checksum
algorithm. For more information, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/ServerSideEncryptionCustomerKeys.html">Protecting
data using SSE-C keys</a> in the <em>Amazon S3 User Guide</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_select_object_content_:_Expression">Expression</code></td>
<td><p>[required] The expression that is used to query the
object.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_select_object_content_:_ExpressionType">ExpressionType</code></td>
<td><p>[required] The type of the provided expression (for example,
SQL).</p></td>
</tr>
<tr class="even">
<td><code
id="s3_select_object_content_:_RequestProgress">RequestProgress</code></td>
<td><p>Specifies if periodic request progress information should be
enabled.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_select_object_content_:_InputSerialization">InputSerialization</code></td>
<td><p>[required] Describes the format of the data in the object that is
being queried.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_select_object_content_:_OutputSerialization">OutputSerialization</code></td>
<td><p>[required] Describes the format of the data that you want Amazon
S3 to return in response.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_select_object_content_:_ScanRange">ScanRange</code></td>
<td><p>Specifies the byte range of the object to get the records from. A
record is processed when its first byte is contained by the range. This
parameter is optional, but when specified, it must not be empty. See RFC
2616, Section 14.35.1 about how to specify the start and end of the
range.</p>
<p><code>ScanRange</code>may be used in the following ways:</p>
<ul>
<li><p><code
style="white-space: pre;">⁠&lt;scanrange&gt;&lt;start&gt;50&lt;/start&gt;&lt;end&gt;100&lt;/end&gt;&lt;/scanrange&gt;⁠</code>
- process only the records starting between the bytes 50 and 100
(inclusive, counting from zero)</p></li>
<li><p><code
style="white-space: pre;">⁠&lt;scanrange&gt;&lt;start&gt;50&lt;/start&gt;&lt;/scanrange&gt;⁠</code>
- process only the records starting after the byte 50</p></li>
<li><p><code
style="white-space: pre;">⁠&lt;scanrange&gt;&lt;end&gt;50&lt;/end&gt;&lt;/scanrange&gt;⁠</code>
- process only the records within the last 50 bytes of the
file.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="s3_select_object_content_:_ExpectedBucketOwner">ExpectedBucketOwner</code></td>
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
      Payload = list(
        Records = list(
          Payload = raw
        ),
        Stats = list(
          Details = list(
            BytesScanned = 123,
            BytesProcessed = 123,
            BytesReturned = 123
          )
        ),
        Progress = list(
          Details = list(
            BytesScanned = 123,
            BytesProcessed = 123,
            BytesReturned = 123
          )
        ),
        Cont = list(),
        End = list()
      )
    )

### Request syntax

    svc$select_object_content(
      Bucket = "string",
      Key = "string",
      SSECustomerAlgorithm = "string",
      SSECustomerKey = raw,
      SSECustomerKeyMD5 = "string",
      Expression = "string",
      ExpressionType = "SQL",
      RequestProgress = list(
        Enabled = TRUE|FALSE
      ),
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
      ),
      ScanRange = list(
        Start = 123,
        End = 123
      ),
      ExpectedBucketOwner = "string"
    )
