<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3control_list_regional_buckets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of all Outposts buckets in an Outpost that are owned by the authenticated sender of the request

### Description

Returns a list of all Outposts buckets in an Outpost that are owned by
the authenticated sender of the request. For more information, see
[Using Amazon S3 on
Outposts](https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html)
in the *Amazon S3 User Guide*.

For an example of the request syntax for Amazon S3 on Outposts that uses
the S3 on Outposts endpoint hostname prefix and `x-amz-outpost-id` in
your request, see the
[Examples](https://docs.aws.amazon.com/AmazonS3/latest/API/API_control_ListRegionalBuckets.html#API_control_ListRegionalBuckets_Examples)
section.

### Usage

    s3control_list_regional_buckets(AccountId, NextToken, MaxResults,
      OutpostId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3control_list_regional_buckets_:_AccountId">AccountId</code></td>
<td><p>[required] The Amazon Web Services account ID of the Outposts
bucket.</p></td>
</tr>
<tr class="even">
<td><code
id="s3control_list_regional_buckets_:_NextToken">NextToken</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="s3control_list_regional_buckets_:_MaxResults">MaxResults</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="s3control_list_regional_buckets_:_OutpostId">OutpostId</code></td>
<td><p>The ID of the Outposts resource.</p>
<p>This ID is required by Amazon S3 on Outposts buckets.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RegionalBucketList = list(
        list(
          Bucket = "string",
          BucketArn = "string",
          PublicAccessBlockEnabled = TRUE|FALSE,
          CreationDate = as.POSIXct(
            "2015-01-01"
          ),
          OutpostId = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_regional_buckets(
      AccountId = "string",
      NextToken = "string",
      MaxResults = 123,
      OutpostId = "string"
    )
