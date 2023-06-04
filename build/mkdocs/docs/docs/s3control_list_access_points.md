<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3control_list_access_points</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of the access points that are owned by the current account that's associated with the specified bucket

### Description

Returns a list of the access points that are owned by the current
account that's associated with the specified bucket. You can retrieve up
to 1000 access points per call. If the specified bucket has more than
1,000 access points (or the number specified in `maxResults`, whichever
is less), the response will include a continuation token that you can
use to list the additional access points.

All Amazon S3 on Outposts REST API requests for this action require an
additional parameter of `x-amz-outpost-id` to be passed with the
request. In addition, you must use an S3 on Outposts endpoint hostname
prefix instead of `s3-control`. For an example of the request syntax for
Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname
prefix and the `x-amz-outpost-id` derived by using the access point ARN,
see the
[Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_GetAccessPoint.html#API_control_GetAccessPoint_Examples)
section.

The following actions are related to `list_access_points`:

-   `create_access_point`

-   `delete_access_point`

-   `get_access_point`

### Usage

    s3control_list_access_points(AccountId, Bucket, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3control_list_access_points_:_AccountId">AccountId</code></td>
<td><p>[required] The Amazon Web Services account ID for the account
that owns the specified access points.</p></td>
</tr>
<tr class="even">
<td><code id="s3control_list_access_points_:_Bucket">Bucket</code></td>
<td><p>The name of the bucket whose associated access points you want to
list.</p>
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
<tr class="odd">
<td><code
id="s3control_list_access_points_:_NextToken">NextToken</code></td>
<td><p>A continuation token. If a previous call to
<code>list_access_points</code> returned a continuation token in the
<code>NextToken</code> field, then providing that value here causes
Amazon S3 to retrieve the next page of results.</p></td>
</tr>
<tr class="even">
<td><code
id="s3control_list_access_points_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of access points that you want to include in
the list. If the specified bucket has more than this number of access
points, then the response will include a continuation token in the
<code>NextToken</code> field that you can use to retrieve the next page
of access points.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AccessPointList = list(
        list(
          Name = "string",
          NetworkOrigin = "Internet"|"VPC",
          VpcConfiguration = list(
            VpcId = "string"
          ),
          Bucket = "string",
          AccessPointArn = "string",
          Alias = "string",
          BucketAccountId = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_access_points(
      AccountId = "string",
      Bucket = "string",
      NextToken = "string",
      MaxResults = 123
    )
