<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3control_get_multi_region_access_point_policy_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Indicates whether the specified Multi-Region Access Point has an access control policy that allows public access

### Description

Indicates whether the specified Multi-Region Access Point has an access
control policy that allows public access.

This action will always be routed to the US West (Oregon) Region. For
more information about the restrictions around managing Multi-Region
Access Points, see [Managing Multi-Region Access
Points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/) in the
*Amazon S3 User Guide*.

The following actions are related to
`get_multi_region_access_point_policy_status`:

-   `get_multi_region_access_point_policy`

-   `put_multi_region_access_point_policy`

### Usage

    s3control_get_multi_region_access_point_policy_status(AccountId, Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3control_get_multi_region_access_point_policy_status_:_AccountId">AccountId</code></td>
<td><p>[required] The Amazon Web Services account ID for the owner of
the Multi-Region Access Point.</p></td>
</tr>
<tr class="even">
<td><code
id="s3control_get_multi_region_access_point_policy_status_:_Name">Name</code></td>
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
      Established = list(
        IsPublic = TRUE|FALSE
      )
    )

### Request syntax

    svc$get_multi_region_access_point_policy_status(
      AccountId = "string",
      Name = "string"
    )
