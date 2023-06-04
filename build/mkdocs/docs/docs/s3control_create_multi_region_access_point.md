<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3control_create_multi_region_access_point</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a Multi-Region Access Point and associates it with the specified buckets

### Description

Creates a Multi-Region Access Point and associates it with the specified
buckets. For more information about creating Multi-Region Access Points,
see [Creating Multi-Region Access
Points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/CreatingMultiRegionAccessPoints.html)
in the *Amazon S3 User Guide*.

This action will always be routed to the US West (Oregon) Region. For
more information about the restrictions around managing Multi-Region
Access Points, see [Managing Multi-Region Access
Points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/) in the
*Amazon S3 User Guide*.

This request is asynchronous, meaning that you might receive a response
before the command has completed. When this request provides a response,
it provides a token that you can use to monitor the status of the
request with `describe_multi_region_access_point_operation`.

The following actions are related to `create_multi_region_access_point`:

-   `delete_multi_region_access_point`

-   `describe_multi_region_access_point_operation`

-   `get_multi_region_access_point`

-   `list_multi_region_access_points`

### Usage

    s3control_create_multi_region_access_point(AccountId, ClientToken,
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
id="s3control_create_multi_region_access_point_:_AccountId">AccountId</code></td>
<td><p>[required] The Amazon Web Services account ID for the owner of
the Multi-Region Access Point. The owner of the Multi-Region Access
Point also must own the underlying buckets.</p></td>
</tr>
<tr class="even">
<td><code
id="s3control_create_multi_region_access_point_:_ClientToken">ClientToken</code></td>
<td><p>[required] An idempotency token used to identify the request and
guarantee that requests are unique.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3control_create_multi_region_access_point_:_Details">Details</code></td>
<td><p>[required] A container element containing details about the
Multi-Region Access Point.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RequestTokenARN = "string"
    )

### Request syntax

    svc$create_multi_region_access_point(
      AccountId = "string",
      ClientToken = "string",
      Details = list(
        Name = "string",
        PublicAccessBlock = list(
          BlockPublicAcls = TRUE|FALSE,
          IgnorePublicAcls = TRUE|FALSE,
          BlockPublicPolicy = TRUE|FALSE,
          RestrictPublicBuckets = TRUE|FALSE
        ),
        Regions = list(
          list(
            Bucket = "string",
            BucketAccountId = "string"
          )
        )
      )
    )
