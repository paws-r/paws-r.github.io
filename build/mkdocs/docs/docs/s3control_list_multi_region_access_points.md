<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3control_list_multi_region_access_points</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of the Multi-Region Access Points currently associated with the specified Amazon Web Services account

### Description

Returns a list of the Multi-Region Access Points currently associated
with the specified Amazon Web Services account. Each call can return up
to 100 Multi-Region Access Points, the maximum number of Multi-Region
Access Points that can be associated with a single account.

This action will always be routed to the US West (Oregon) Region. For
more information about the restrictions around managing Multi-Region
Access Points, see [Managing Multi-Region Access
Points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/) in the
*Amazon S3 User Guide*.

The following actions are related to `ListMultiRegionAccessPoint`:

-   `create_multi_region_access_point`

-   `delete_multi_region_access_point`

-   `describe_multi_region_access_point_operation`

-   `get_multi_region_access_point`

### Usage

    s3control_list_multi_region_access_points(AccountId, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3control_list_multi_region_access_points_:_AccountId">AccountId</code></td>
<td><p>[required] The Amazon Web Services account ID for the owner of
the Multi-Region Access Point.</p></td>
</tr>
<tr class="even">
<td><code
id="s3control_list_multi_region_access_points_:_NextToken">NextToken</code></td>
<td><p>Not currently used. Do not use this parameter.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3control_list_multi_region_access_points_:_MaxResults">MaxResults</code></td>
<td><p>Not currently used. Do not use this parameter.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AccessPoints = list(
        list(
          Name = "string",
          Alias = "string",
          CreatedAt = as.POSIXct(
            "2015-01-01"
          ),
          PublicAccessBlock = list(
            BlockPublicAcls = TRUE|FALSE,
            IgnorePublicAcls = TRUE|FALSE,
            BlockPublicPolicy = TRUE|FALSE,
            RestrictPublicBuckets = TRUE|FALSE
          ),
          Status = "READY"|"INCONSISTENT_ACROSS_REGIONS"|"CREATING"|"PARTIALLY_CREATED"|"PARTIALLY_DELETED"|"DELETING",
          Regions = list(
            list(
              Bucket = "string",
              Region = "string",
              BucketAccountId = "string"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_multi_region_access_points(
      AccountId = "string",
      NextToken = "string",
      MaxResults = 123
    )
