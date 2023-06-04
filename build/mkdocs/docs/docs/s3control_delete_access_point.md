<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3control_delete_access_point</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified access point

### Description

Deletes the specified access point.

All Amazon S3 on Outposts REST API requests for this action require an
additional parameter of `x-amz-outpost-id` to be passed with the
request. In addition, you must use an S3 on Outposts endpoint hostname
prefix instead of `s3-control`. For an example of the request syntax for
Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname
prefix and the `x-amz-outpost-id` derived by using the access point ARN,
see the
[Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_DeleteAccessPoint.html#API_control_DeleteAccessPoint_Examples)
section.

The following actions are related to `delete_access_point`:

-   `create_access_point`

-   `get_access_point`

-   `list_access_points`

### Usage

    s3control_delete_access_point(AccountId, Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3control_delete_access_point_:_AccountId">AccountId</code></td>
<td><p>[required] The Amazon Web Services account ID for the account
that owns the specified access point.</p></td>
</tr>
<tr class="even">
<td><code id="s3control_delete_access_point_:_Name">Name</code></td>
<td><p>[required] The name of the access point you want to delete.</p>
<p>For using this parameter with Amazon S3 on Outposts with the REST
API, you must specify the name and the x-amz-outpost-id as well.</p>
<p>For using this parameter with S3 on Outposts with the Amazon Web
Services SDK and CLI, you must specify the ARN of the access point
accessed in the format <code
style="white-space: pre;">⁠arn:aws:s3-outposts:&lt;Region&gt;:&lt;account-id&gt;:outpost/&lt;outpost-id&gt;/accesspoint/&lt;my-accesspoint-name&gt;⁠</code>.
For example, to access the access point <code>reports-ap</code> through
Outpost <code>my-outpost</code> owned by account
<code>123456789012</code> in Region <code>us-west-2</code>, use the URL
encoding of
<code>arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/accesspoint/reports-ap</code>.
The value must be URL encoded.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_access_point(
      AccountId = "string",
      Name = "string"
    )
