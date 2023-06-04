<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3control_describe_multi_region_access_point_operation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the status of an asynchronous request to manage a Multi-Region Access Point

### Description

Retrieves the status of an asynchronous request to manage a Multi-Region
Access Point. For more information about managing Multi-Region Access
Points and how asynchronous requests work, see [Managing Multi-Region
Access Points](https://docs.aws.amazon.com/AmazonS3/latest/userguide/)
in the *Amazon S3 User Guide*.

The following actions are related to `get_multi_region_access_point`:

-   `create_multi_region_access_point`

-   `delete_multi_region_access_point`

-   `get_multi_region_access_point`

-   `list_multi_region_access_points`

### Usage

    s3control_describe_multi_region_access_point_operation(AccountId,
      RequestTokenARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3control_describe_multi_region_access_point_operation_:_AccountId">AccountId</code></td>
<td><p>[required] The Amazon Web Services account ID for the owner of
the Multi-Region Access Point.</p></td>
</tr>
<tr class="even">
<td><code
id="s3control_describe_multi_region_access_point_operation_:_RequestTokenARN">RequestTokenARN</code></td>
<td><p>[required] The request token associated with the request you want
to know about. This request token is returned as part of the response
when you make an asynchronous request. You provide this token to query
about the status of the asynchronous action.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AsyncOperation = list(
        CreationTime = as.POSIXct(
          "2015-01-01"
        ),
        Operation = "CreateMultiRegionAccessPoint"|"DeleteMultiRegionAccessPoint"|"PutMultiRegionAccessPointPolicy",
        RequestTokenARN = "string",
        RequestParameters = list(
          CreateMultiRegionAccessPointRequest = list(
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
          ),
          DeleteMultiRegionAccessPointRequest = list(
            Name = "string"
          ),
          PutMultiRegionAccessPointPolicyRequest = list(
            Name = "string",
            Policy = "string"
          )
        ),
        RequestStatus = "string",
        ResponseDetails = list(
          MultiRegionAccessPointDetails = list(
            Regions = list(
              list(
                Name = "string",
                RequestStatus = "string"
              )
            )
          ),
          ErrorDetails = list(
            Code = "string",
            Message = "string",
            Resource = "string",
            RequestId = "string"
          )
        )
      )
    )

### Request syntax

    svc$describe_multi_region_access_point_operation(
      AccountId = "string",
      RequestTokenARN = "string"
    )
