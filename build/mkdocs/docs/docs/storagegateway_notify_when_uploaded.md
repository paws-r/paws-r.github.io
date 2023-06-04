<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>storagegateway_notify_when_uploaded</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sends you notification through CloudWatch Events when all files written to your file share have been uploaded to S3

### Description

Sends you notification through CloudWatch Events when all files written
to your file share have been uploaded to S3. Amazon S3.

Storage Gateway can send a notification through Amazon CloudWatch Events
when all files written to your file share up to that point in time have
been uploaded to Amazon S3. These files include files written to the
file share up to the time that you make a request for notification. When
the upload is done, Storage Gateway sends you notification through an
Amazon CloudWatch Event. You can configure CloudWatch Events to send the
notification through event targets such as Amazon SNS or Lambda
function. This operation is only supported for S3 File Gateways.

For more information, see [Getting file upload
notification](https://docs.aws.amazon.com/storagegateway/index.html#get-upload-notification)
in the *Storage Gateway User Guide*.

### Usage

    storagegateway_notify_when_uploaded(FileShareARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="storagegateway_notify_when_uploaded_:_FileShareARN">FileShareARN</code></td>
<td><p>[required]</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FileShareARN = "string",
      NotificationId = "string"
    )

### Request syntax

    svc$notify_when_uploaded(
      FileShareARN = "string"
    )
