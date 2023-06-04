<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>textract_start_expense_analysis</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts the asynchronous analysis of invoices or receipts for data like contact information, items purchased, and vendor names

### Description

Starts the asynchronous analysis of invoices or receipts for data like
contact information, items purchased, and vendor names.

`start_expense_analysis` can analyze text in documents that are in JPEG,
PNG, and PDF format. The documents must be stored in an Amazon S3
bucket. Use the DocumentLocation parameter to specify the name of your
S3 bucket and the name of the document in that bucket.

`start_expense_analysis` returns a job identifier (`JobId`) that you
will provide to `get_expense_analysis` to retrieve the results of the
operation. When the analysis of the input invoices/receipts is finished,
Amazon Textract publishes a completion status to the Amazon Simple
Notification Service (Amazon SNS) topic that you provide to the
`NotificationChannel`. To obtain the results of the invoice and receipt
analysis operation, ensure that the status value published to the Amazon
SNS topic is `SUCCEEDED`. If so, call `get_expense_analysis`, and pass
the job identifier (`JobId`) that was returned by your call to
`start_expense_analysis`.

For more information, see [Analyzing Invoices and
Receipts](https://docs.aws.amazon.com/textract/latest/dg/).

### Usage

    textract_start_expense_analysis(DocumentLocation, ClientRequestToken,
      JobTag, NotificationChannel, OutputConfig, KMSKeyId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="textract_start_expense_analysis_:_DocumentLocation">DocumentLocation</code></td>
<td><p>[required] The location of the document to be processed.</p></td>
</tr>
<tr class="even">
<td><code
id="textract_start_expense_analysis_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>The idempotent token that's used to identify the start request.
If you use the same token with multiple
<code>start_document_text_detection</code> requests, the same
<code>JobId</code> is returned. Use <code>ClientRequestToken</code> to
prevent the same job from being accidentally started more than once. For
more information, see <a
href="https://docs.aws.amazon.com/textract/latest/dg/api-async.html">Calling
Amazon Textract Asynchronous Operations</a></p></td>
</tr>
<tr class="odd">
<td><code
id="textract_start_expense_analysis_:_JobTag">JobTag</code></td>
<td><p>An identifier you specify that's included in the completion
notification published to the Amazon SNS topic. For example, you can use
<code>JobTag</code> to identify the type of document that the completion
notification corresponds to (such as a tax form or a receipt).</p></td>
</tr>
<tr class="even">
<td><code
id="textract_start_expense_analysis_:_NotificationChannel">NotificationChannel</code></td>
<td><p>The Amazon SNS topic ARN that you want Amazon Textract to publish
the completion status of the operation to.</p></td>
</tr>
<tr class="odd">
<td><code
id="textract_start_expense_analysis_:_OutputConfig">OutputConfig</code></td>
<td><p>Sets if the output will go to a customer defined bucket. By
default, Amazon Textract will save the results internally to be accessed
by the <code>get_expense_analysis</code> operation.</p></td>
</tr>
<tr class="even">
<td><code
id="textract_start_expense_analysis_:_KMSKeyId">KMSKeyId</code></td>
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

    svc$start_expense_analysis(
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
