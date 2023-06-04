<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3control_create_access_point</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an access point and associates it with the specified bucket

### Description

Creates an access point and associates it with the specified bucket. For
more information, see [Managing Data Access with Amazon S3 Access
Points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points.html)
in the *Amazon S3 User Guide*.

S3 on Outposts only supports VPC-style access points.

For more information, see [Accessing Amazon S3 on Outposts using virtual
private cloud (VPC) only access
points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
in the *Amazon S3 User Guide*.

All Amazon S3 on Outposts REST API requests for this action require an
additional parameter of `x-amz-outpost-id` to be passed with the
request. In addition, you must use an S3 on Outposts endpoint hostname
prefix instead of `s3-control`. For an example of the request syntax for
Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname
prefix and the `x-amz-outpost-id` derived by using the access point ARN,
see the
[Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_CreateAccessPoint.html#API_control_CreateAccessPoint_Examples)
section.

The following actions are related to `create_access_point`:

-   `get_access_point`

-   `delete_access_point`

-   `list_access_points`

### Usage

    s3control_create_access_point(AccountId, Name, Bucket, VpcConfiguration,
      PublicAccessBlockConfiguration, BucketAccountId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3control_create_access_point_:_AccountId">AccountId</code></td>
<td><p>[required] The Amazon Web Services account ID for the account
that owns the specified access point.</p></td>
</tr>
<tr class="even">
<td><code id="s3control_create_access_point_:_Name">Name</code></td>
<td><p>[required] The name you want to assign to this access
point.</p></td>
</tr>
<tr class="odd">
<td><code id="s3control_create_access_point_:_Bucket">Bucket</code></td>
<td><p>[required] The name of the bucket that you want to associate this
access point with.</p>
<p>For using this parameter with Amazon S3 on Outposts with the REST
API, you must specify the name and the x-amz-outpost-id as well.</p>
<p>For using this parameter with S3 on Outposts with the Amazon Web
Services SDK and CLI, you must specify the ARN of the bucket accessed in
the format <code
style="white-space: pre;">⁠arn:aws:s3-outposts:&lt;Region&gt;:&lt;account-id&gt;:outpost/&lt;outpost-id&gt;/bucket/&lt;my-bucket-name&gt;⁠</code>.
For example, to access the bucket <code>reports</code> through Outpost
<code>my-outpost</code> owned by account <code>123456789012</code> in
Region <code>us-west-2</code>, use the URL encoding of
<code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/bucket/reports</code>.
The value must be URL encoded.</p></td>
</tr>
<tr class="even">
<td><code
id="s3control_create_access_point_:_VpcConfiguration">VpcConfiguration</code></td>
<td><p>If you include this field, Amazon S3 restricts access to this
access point to requests from the specified virtual private cloud
(VPC).</p>
<p>This is required for creating an access point for Amazon S3 on
Outposts buckets.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3control_create_access_point_:_PublicAccessBlockConfiguration">PublicAccessBlockConfiguration</code></td>
<td><p>The <code>PublicAccessBlock</code> configuration that you want to
apply to the access point.</p></td>
</tr>
<tr class="even">
<td><code
id="s3control_create_access_point_:_BucketAccountId">BucketAccountId</code></td>
<td><p>The Amazon Web Services account ID associated with the S3 bucket
associated with this access point.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AccessPointArn = "string",
      Alias = "string"
    )

### Request syntax

    svc$create_access_point(
      AccountId = "string",
      Name = "string",
      Bucket = "string",
      VpcConfiguration = list(
        VpcId = "string"
      ),
      PublicAccessBlockConfiguration = list(
        BlockPublicAcls = TRUE|FALSE,
        IgnorePublicAcls = TRUE|FALSE,
        BlockPublicPolicy = TRUE|FALSE,
        RestrictPublicBuckets = TRUE|FALSE
      ),
      BucketAccountId = "string"
    )
