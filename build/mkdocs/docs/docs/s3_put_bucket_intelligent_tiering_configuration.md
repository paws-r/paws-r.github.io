<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_put_bucket_intelligent_tiering_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Puts a S3 Intelligent-Tiering configuration to the specified bucket

### Description

Puts a S3 Intelligent-Tiering configuration to the specified bucket. You
can have up to 1,000 S3 Intelligent-Tiering configurations per bucket.

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

Operations related to `put_bucket_intelligent_tiering_configuration`
include:

-   `delete_bucket_intelligent_tiering_configuration`

-   `get_bucket_intelligent_tiering_configuration`

-   `list_bucket_intelligent_tiering_configurations`

You only need S3 Intelligent-Tiering enabled on a bucket if you want to
automatically move objects stored in the S3 Intelligent-Tiering storage
class to the Archive Access or Deep Archive Access tier.

`put_bucket_intelligent_tiering_configuration` has the following special
errors:

#### HTTP 400 Bad Request Error

*Code:* InvalidArgument

*Cause:* Invalid Argument

#### HTTP 400 Bad Request Error

*Code:* TooManyConfigurations

*Cause:* You are attempting to create a new configuration but have
already reached the 1,000-configuration limit.

#### HTTP 403 Forbidden Error

*Cause:* You are not the owner of the specified bucket, or you do not
have the `s3:PutIntelligentTieringConfiguration` bucket permission to
set the configuration on the bucket.

### Usage

    s3_put_bucket_intelligent_tiering_configuration(Bucket, Id,
      IntelligentTieringConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="s3_put_bucket_intelligent_tiering_configuration_:_Bucket">Bucket</code></td>
<td><p>[required] The name of the Amazon S3 bucket whose configuration
you want to modify or retrieve.</p></td>
</tr>
<tr class="even">
<td><code
id="s3_put_bucket_intelligent_tiering_configuration_:_Id">Id</code></td>
<td><p>[required] The ID used to identify the S3 Intelligent-Tiering
configuration.</p></td>
</tr>
<tr class="odd">
<td><code
id="s3_put_bucket_intelligent_tiering_configuration_:_IntelligentTieringConfiguration">IntelligentTieringConfiguration</code></td>
<td><p>[required] Container for S3 Intelligent-Tiering
configuration.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_bucket_intelligent_tiering_configuration(
      Bucket = "string",
      Id = "string",
      IntelligentTieringConfiguration = list(
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
