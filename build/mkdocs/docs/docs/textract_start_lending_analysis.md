<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>textract_start_lending_analysis</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts the classification and analysis of an input document

### Description

Starts the classification and analysis of an input document.
`start_lending_analysis` initiates the classification and analysis of a
packet of lending documents. `start_lending_analysis` operates on a
document file located in an Amazon S3 bucket.

`start_lending_analysis` can analyze text in documents that are in one
of the following formats: JPEG, PNG, TIFF, PDF. Use `DocumentLocation`
to specify the bucket name and the file name of the document.

`start_lending_analysis` returns a job identifier (`JobId`) that you use
to get the results of the operation. When the text analysis is finished,
Amazon Textract publishes a completion status to the Amazon Simple
Notification Service (Amazon SNS) topic that you specify in
`NotificationChannel`. To get the results of the text analysis
operation, first check that the status value published to the Amazon SNS
topic is SUCCEEDED. If the status is SUCCEEDED you can call either
`get_lending_analysis` or `get_lending_analysis_summary` and provide the
`JobId` to obtain the results of the analysis.

If using `OutputConfig` to specify an Amazon S3 bucket, the output will
be contained within the specified prefix in a directory labeled with the
job-id. In the directory there are 3 sub-directories:

-   detailedResponse (contains the GetLendingAnalysis response)

-   summaryResponse (for the GetLendingAnalysisSummary response)

-   splitDocuments (documents split across logical boundaries)

### Usage

    textract_start_lending_analysis(DocumentLocation, ClientRequestToken,
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
id="textract_start_lending_analysis_:_DocumentLocation">DocumentLocation</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="textract_start_lending_analysis_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>The idempotent token that you use to identify the start request.
If you use the same token with multiple
<code>start_lending_analysis</code> requests, the same
<code>JobId</code> is returned. Use <code>ClientRequestToken</code> to
prevent the same job from being accidentally started more than once. For
more information, see <a
href="https://docs.aws.amazon.com/textract/latest/dg/">Calling Amazon
Textract Asynchronous Operations</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="textract_start_lending_analysis_:_JobTag">JobTag</code></td>
<td><p>An identifier that you specify to be included in the completion
notification published to the Amazon SNS topic. For example, you can use
<code>JobTag</code> to identify the type of document that the completion
notification corresponds to (such as a tax form or a receipt).</p></td>
</tr>
<tr class="even">
<td><code
id="textract_start_lending_analysis_:_NotificationChannel">NotificationChannel</code></td>
<td></td>
</tr>
<tr class="odd">
<td><code
id="textract_start_lending_analysis_:_OutputConfig">OutputConfig</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="textract_start_lending_analysis_:_KMSKeyId">KMSKeyId</code></td>
<td><p>The KMS key used to encrypt the inference results. This can be in
either Key ID or Key Alias format. When a KMS key is provided, the KMS
key will be used for server-side encryption of the objects in the
customer bucket. When this parameter is not enabled, the result will be
encrypted server side, using SSE-S3.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JobId = "string"
    )

### Request syntax

    svc$start_lending_analysis(
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
