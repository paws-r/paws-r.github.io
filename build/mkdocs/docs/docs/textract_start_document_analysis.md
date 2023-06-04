<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>textract_start_document_analysis</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts the asynchronous analysis of an input document for relationships between detected items such as key-value pairs, tables, and selection elements

### Description

Starts the asynchronous analysis of an input document for relationships
between detected items such as key-value pairs, tables, and selection
elements.

`start_document_analysis` can analyze text in documents that are in
JPEG, PNG, TIFF, and PDF format. The documents are stored in an Amazon
S3 bucket. Use DocumentLocation to specify the bucket name and file name
of the document.

`start_document_analysis` returns a job identifier (`JobId`) that you
use to get the results of the operation. When text analysis is finished,
Amazon Textract publishes a completion status to the Amazon Simple
Notification Service (Amazon SNS) topic that you specify in
`NotificationChannel`. To get the results of the text analysis
operation, first check that the status value published to the Amazon SNS
topic is `SUCCEEDED`. If so, call `get_document_analysis`, and pass the
job identifier (`JobId`) from the initial call to
`start_document_analysis`.

For more information, see [Document Text
Analysis](https://docs.aws.amazon.com/textract/latest/dg/how-it-works-analyzing.html).

### Usage

    textract_start_document_analysis(DocumentLocation, FeatureTypes,
      ClientRequestToken, JobTag, NotificationChannel, OutputConfig, KMSKeyId,
      QueriesConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="textract_start_document_analysis_:_DocumentLocation">DocumentLocation</code></td>
<td><p>[required] The location of the document to be processed.</p></td>
</tr>
<tr class="even">
<td><code
id="textract_start_document_analysis_:_FeatureTypes">FeatureTypes</code></td>
<td><p>[required] A list of the types of analysis to perform. Add TABLES
to the list to return information about the tables that are detected in
the input document. Add FORMS to return detected form data. To perform
both types of analysis, add TABLES and FORMS to
<code>FeatureTypes</code>. All lines and words detected in the document
are included in the response (including text that isn't related to the
value of <code>FeatureTypes</code>).</p></td>
</tr>
<tr class="odd">
<td><code
id="textract_start_document_analysis_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>The idempotent token that you use to identify the start request.
If you use the same token with multiple
<code>start_document_analysis</code> requests, the same
<code>JobId</code> is returned. Use <code>ClientRequestToken</code> to
prevent the same job from being accidentally started more than once. For
more information, see <a
href="https://docs.aws.amazon.com/textract/latest/dg/api-async.html">Calling
Amazon Textract Asynchronous Operations</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="textract_start_document_analysis_:_JobTag">JobTag</code></td>
<td><p>An identifier that you specify that's included in the completion
notification published to the Amazon SNS topic. For example, you can use
<code>JobTag</code> to identify the type of document that the completion
notification corresponds to (such as a tax form or a receipt).</p></td>
</tr>
<tr class="odd">
<td><code
id="textract_start_document_analysis_:_NotificationChannel">NotificationChannel</code></td>
<td><p>The Amazon SNS topic ARN that you want Amazon Textract to publish
the completion status of the operation to.</p></td>
</tr>
<tr class="even">
<td><code
id="textract_start_document_analysis_:_OutputConfig">OutputConfig</code></td>
<td><p>Sets if the output will go to a customer defined bucket. By
default, Amazon Textract will save the results internally to be accessed
by the GetDocumentAnalysis operation.</p></td>
</tr>
<tr class="odd">
<td><code
id="textract_start_document_analysis_:_KMSKeyId">KMSKeyId</code></td>
<td><p>The KMS key used to encrypt the inference results. This can be in
either Key ID or Key Alias format. When a KMS key is provided, the KMS
key will be used for server-side encryption of the objects in the
customer bucket. When this parameter is not enabled, the result will be
encrypted server side,using SSE-S3.</p></td>
</tr>
<tr class="even">
<td><code
id="textract_start_document_analysis_:_QueriesConfig">QueriesConfig</code></td>
<td></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JobId = "string"
    )

### Request syntax

    svc$start_document_analysis(
      DocumentLocation = list(
        S3Object = list(
          Bucket = "string",
          Name = "string",
          Version = "string"
        )
      ),
      FeatureTypes = list(
        "TABLES"|"FORMS"|"QUERIES"|"SIGNATURES"
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
      KMSKeyId = "string",
      QueriesConfig = list(
        Queries = list(
          list(
            Text = "string",
            Alias = "string",
            Pages = list(
              "string"
            )
          )
        )
      )
    )
