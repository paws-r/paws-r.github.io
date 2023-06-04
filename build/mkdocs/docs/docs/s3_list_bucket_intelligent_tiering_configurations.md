<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_list_bucket_intelligent_tiering_configurations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists the S3 Intelligent-Tiering configuration from the specified bucket

### Description

Lists the S3 Intelligent-Tiering configuration from the specified
bucket.

The S3 Intelligent-Tiering storage class is designed to optimize storage
costs by automatically moving data to the most cost-effective storage
access tier, without performance impact or operational overhead. S3
Intelligent-Tiering delivers automatic cost savings in three low latency
and high throughput access tiers. To get the lowest storage cost on data
that can be accessed in minutes to hours, you can choose to activate
additional archiving capabilities.

The S3 Intelligent-Tiering storage class is the ideal storage class for
data with unknown, changing, or unpredictable access patterns,
independent of object size or retention period. If the size of an object
is less than 128 KB, it is not monitored and not eligible for
auto-tiering. Smaller objects can be stored, but they are always charged
at the Frequent Access tier rates in the S3 Intelligent-Tiering storage
class.

For more information, see [Storage class for automatically optimizing
frequently and infrequently accessed
objects](https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage-class-intro.html#sc-dynamic-data-access).

Operations related to `list_bucket_intelligent_tiering_configurations`
include:

-   `delete_bucket_intelligent_tiering_configuration`

-   `put_bucket_intelligent_tiering_configuration`

-   `get_bucket_intelligent_tiering_configuration`

### Usage

    s3_list_bucket_intelligent_tiering_configurations(Bucket,
      ContinuationToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3_list_bucket_intelligent_tiering_configurations_:_Bucket">Bucket</code></td>
<td><p>[required] The name of the Amazon S3 bucket whose configuration
you want to modify or retrieve.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_list_bucket_intelligent_tiering_configurations_:_ContinuationToken">ContinuationToken</code></td>
<td><p>The <code>ContinuationToken</code> that represents a placeholder
from where this request should begin.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      IsTruncated = TRUE|FALSE,
      ContinuationToken = "string",
      NextContinuationToken = "string",
      IntelligentTieringConfigurationList = list(
        list(
          Id = "string",
          Filter = list(
            Prefix = "string",
            Tag = list(
              Key = "string",
              Value = "string"
            ),
            And = list(
              Prefix = "string",
              Tags = list(
                list(
                  Key = "string",
                  Value = "string"
                )
              )
            )
          ),
          Status = "Enabled"|"Disabled",
          Tierings = list(
            list(
              Days = 123,
              AccessTier = "ARCHIVE_ACCESS"|"DEEP_ARCHIVE_ACCESS"
            )
          )
        )
      )
    )

### Request syntax

    svc$list_bucket_intelligent_tiering_configurations(
      Bucket = "string",
      ContinuationToken = "string"
    )
