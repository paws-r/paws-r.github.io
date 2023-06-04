<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3control_put_multi_region_access_point_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Associates an access control policy with the specified Multi-Region Access Point

### Description

Associates an access control policy with the specified Multi-Region
Access Point. Each Multi-Region Access Point can have only one policy,
so a request made to this action replaces any existing policy that is
associated with the specified Multi-Region Access Point.

This action will always be routed to the US West (Oregon) Region. For
more information about the restrictions around managing Multi-Region
Access Points, see [Managing Multi-Region Access
Points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/) in the
*Amazon S3 User Guide*.

The following actions are related to
`put_multi_region_access_point_policy`:

-   `get_multi_region_access_point_policy`

-   `get_multi_region_access_point_policy_status`

### Usage

    s3control_put_multi_region_access_point_policy(AccountId, ClientToken,
      Details)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3control_put_multi_region_access_point_policy_:_AccountId">AccountId</code></td>
<td><p>[required] The Amazon Web Services account ID for the owner of
the Multi-Region Access Point.</p></td>
</tr>
<tr class="even">
<td><code
id="s3control_put_multi_region_access_point_policy_:_ClientToken">ClientToken</code></td>
<td><p>[required] An idempotency token used to identify the request and
guarantee that requests are unique.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3control_put_multi_region_access_point_policy_:_Details">Details</code></td>
<td><p>[required] A container element containing the details of the
policy for the Multi-Region Access Point.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RequestTokenARN = "string"
    )

### Request syntax

    svc$put_multi_region_access_point_policy(
      AccountId = "string",
      ClientToken = "string",
      Details = list(
        Name = "string",
        Policy = "string"
      )
    )
