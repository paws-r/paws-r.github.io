<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>s3_list_buckets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of all buckets owned by the authenticated sender of the request

### Description

Returns a list of all buckets owned by the authenticated sender of the
request. To use this operation, you must have the `s3:ListAllMyBuckets`
permission.

For information about Amazon S3 buckets, see [Creating, configuring, and
working with Amazon S3
buckets](https://docs.aws.amazon.com/AmazonS3/latest/userguide/creating-buckets-s3.html).

### Usage

    s3_list_buckets()

### Value

A list with the following syntax:

    list(
      Buckets = list(
        list(
          Name = "string",
          CreationDate = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      Owner = list(
        DisplayName = "string",
        ID = "string"
      )
    )

### Examples

    ## Not run: 
    # The following example returns all the buckets owned by the sender of
    # this request.
    svc$list_buckets()

    ## End(Not run)
