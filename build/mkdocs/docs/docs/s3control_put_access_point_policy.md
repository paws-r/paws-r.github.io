<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3control_put_access_point_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates an access policy with the specified access point

### Description

Associates an access policy with the specified access point. Each access
point can have only one policy, so a request made to this API replaces
any existing policy associated with the specified access point.

All Amazon S3 on Outposts REST API requests for this action require an
additional parameter of `x-amz-outpost-id` to be passed with the
request. In addition, you must use an S3 on Outposts endpoint hostname
prefix instead of `s3-control`. For an example of the request syntax for
Amazon S3 on Outposts that uses the S3 on Outposts endpoint hostname
prefix and the `x-amz-outpost-id` derived by using the access point ARN,
see the
[Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_PutAccessPointPolicy.html#API_control_PutAccessPointPolicy_Examples)
section.

The following actions are related to `put_access_point_policy`:

-   `get_access_point_policy`

-   `delete_access_point_policy`

### Usage

    s3control_put_access_point_policy(AccountId, Name, Policy)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3control_put_access_point_policy_:_AccountId">AccountId</code></td>
<td><p>[required] The Amazon Web Services account ID for owner of the
bucket associated with the specified access point.</p></td>
</tr>
<tr class="even">
<td><code id="s3control_put_access_point_policy_:_Name">Name</code></td>
<td><p>[required] The name of the access point that you want to
associate with the specified policy.</p>
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
<tr class="odd">
<td><code
id="s3control_put_access_point_policy_:_Policy">Policy</code></td>
<td><p>[required] The policy that you want to apply to the specified
access point. For more information about access point policies, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-points.html">Managing
data access with Amazon S3 access points</a> in the <em>Amazon S3 User
Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_access_point_policy(
      AccountId = "string",
      Name = "string",
      Policy = "string"
    )
