<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3control_get_multi_region_access_point_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the access control policy of the specified Multi-Region Access Point

### Description

Returns the access control policy of the specified Multi-Region Access
Point.

This action will always be routed to the US West (Oregon) Region. For
more information about the restrictions around managing Multi-Region
Access Points, see [Managing Multi-Region Access
Points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/) in the
*Amazon S3 User Guide*.

The following actions are related to
`get_multi_region_access_point_policy`:

-   `get_multi_region_access_point_policy_status`

-   `put_multi_region_access_point_policy`

### Usage

    s3control_get_multi_region_access_point_policy(AccountId, Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3control_get_multi_region_access_point_policy_:_AccountId">AccountId</code></td>
<td><p>[required] The Amazon Web Services account ID for the owner of
the Multi-Region Access Point.</p></td>
</tr>
<tr class="even">
<td><code
id="s3control_get_multi_region_access_point_policy_:_Name">Name</code></td>
<td><p>[required] Specifies the Multi-Region Access Point. The name of
the Multi-Region Access Point is different from the alias. For more
information about the distinction between the name and the alias of an
Multi-Region Access Point, see <a
href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/CreatingMultiRegionAccessPoints.html#multi-region-access-point-naming">Managing
Multi-Region Access Points</a> in the <em>Amazon S3 User
Guide</em>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Policy = list(
        Established = list(
          Policy = "string"
        ),
        Proposed = list(
          Policy = "string"
        )
      )
    )

### Request syntax

    svc$get_multi_region_access_point_policy(
      AccountId = "string",
      Name = "string"
    )
