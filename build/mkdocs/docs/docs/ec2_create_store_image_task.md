<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ec2_create_store_image_task</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Stores an AMI as a single object in an Amazon S3 bucket

### Description

Stores an AMI as a single object in an Amazon S3 bucket.

To use this API, you must have the required permissions. For more
information, see [Permissions for storing and restoring AMIs using
Amazon
S3](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-store-restore.html#ami-s3-permissions)
in the *Amazon EC2 User Guide*.

For more information, see [Store and restore an AMI using Amazon
S3](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-store-restore.html)
in the *Amazon EC2 User Guide*.

### Usage

    ec2_create_store_image_task(ImageId, Bucket, S3ObjectTags, DryRun)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ec2_create_store_image_task_:_ImageId">ImageId</code></td>
<td><p>[required] The ID of the AMI.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_create_store_image_task_:_Bucket">Bucket</code></td>
<td><p>[required] The name of the Amazon S3 bucket in which the AMI
object will be stored. The bucket must be in the Region in which the
request is being made. The AMI object appears in the bucket only after
the upload task has completed.</p></td>
</tr>
<tr class="odd">
<td><code
id="ec2_create_store_image_task_:_S3ObjectTags">S3ObjectTags</code></td>
<td><p>The tags to apply to the AMI object that will be stored in the
Amazon S3 bucket.</p></td>
</tr>
<tr class="even">
<td><code id="ec2_create_store_image_task_:_DryRun">DryRun</code></td>
<td><p>Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
<code>DryRunOperation</code>. Otherwise, it is
<code>UnauthorizedOperation</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ObjectKey = "string"
    )

### Request syntax

    svc$create_store_image_task(
      ImageId = "string",
      Bucket = "string",
      S3ObjectTags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      DryRun = TRUE|FALSE
    )
