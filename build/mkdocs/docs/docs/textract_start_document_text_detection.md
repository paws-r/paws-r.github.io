<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>textract_start_document_text_detection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts the asynchronous detection of text in a document

### Description

Starts the asynchronous detection of text in a document. Amazon Textract
can detect lines of text and the words that make up a line of text.

`start_document_text_detection` can analyze text in documents that are
in JPEG, PNG, TIFF, and PDF format. The documents are stored in an
Amazon S3 bucket. Use DocumentLocation to specify the bucket name and
file name of the document.

`StartTextDetection` returns a job identifier (`JobId`) that you use to
get the results of the operation. When text detection is finished,
Amazon Textract publishes a completion status to the Amazon Simple
Notification Service (Amazon SNS) topic that you specify in
`NotificationChannel`. To get the results of the text detection
operation, first check that the status value published to the Amazon SNS
topic is `SUCCEEDED`. If so, call `get_document_text_detection`, and
pass the job identifier (`JobId`) from the initial call to
`start_document_text_detection`.

For more information, see [Document Text
Detection](https://docs.aws.amazon.com/textract/latest/dg/how-it-works-detecting.html).

### Usage

    textract_start_document_text_detection(DocumentLocation,
      ClientRequestToken, JobTag, NotificationChannel, OutputConfig, KMSKeyId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="textract_start_document_text_detection_:_DocumentLocation">DocumentLocation</code></td>
<td><p>[required] The location of the document to be processed.</p></td>
</tr>
<tr class="even">
<td><code
id="textract_start_document_text_detection_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>The idempotent token that's used to identify the start request.
If you use the same token with multiple
<code>start_document_text_detection</code> requests, the same
<code>JobId</code> is returned. Use <code>ClientRequestToken</code> to
prevent the same job from being accidentally started more than once. For
more information, see <a
href="https://docs.aws.amazon.com/textract/latest/dg/api-async.html">Calling
Amazon Textract Asynchronous Operations</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="textract_start_document_text_detection_:_JobTag">JobTag</code></td>
<td><p>An identifier that you specify that's included in the completion
notification published to the Amazon SNS topic. For example, you can use
<code>JobTag</code> to identify the type of document that the completion
notification corresponds to (such as a tax form or a receipt).</p></td>
</tr>
<tr class="even">
<td><code
id="textract_start_document_text_detection_:_NotificationChannel">NotificationChannel</code></td>
<td><p>The Amazon SNS topic ARN that you want Amazon Textract to publish
the completion status of the operation to.</p></td>
</tr>
<tr class="odd">
<td><code
id="textract_start_document_text_detection_:_OutputConfig">OutputConfig</code></td>
<td><p>Sets if the output will go to a customer defined bucket. By
default Amazon Textract will save the results internally to be accessed
with the GetDocumentTextDetection operation.</p></td>
</tr>
<tr class="even">
<td><code
id="textract_start_document_text_detection_:_KMSKeyId">KMSKeyId</code></td>
<td><p>The KMS key used to encrypt the inference results. This can be in
either Key ID or Key Alias format. When a KMS key is provided, the KMS
key will be used for server-side encryption of the objects in the
customer bucket. When this parameter is not enabled, the result will be
encrypted server side,using SSE-S3.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JobId = "string"
    )

### Request syntax

    svc$start_document_text_detection(
      DocumentLocation = list(
        S3Object = list(
          Bucket = "string",
          Name = "string",
          Version = "string"
        )
      ),
      ClientRequestToken = "string",
      JobTag = "string",
      NotificationChannel = list(
        SNSTopicArn = "string",
        RoleArn = "string"
      ),
      OutputConfig = list(
        S3Bucket = "string",
        S3Prefix = "string"
      ),
      KMSKeyId = "string"
    )
