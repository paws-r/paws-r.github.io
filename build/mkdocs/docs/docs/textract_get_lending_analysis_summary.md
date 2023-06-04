<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>textract_get_lending_analysis_summary</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets summarized results for the StartLendingAnalysis operation, which analyzes text in a lending document

### Description

Gets summarized results for the `start_lending_analysis` operation,
which analyzes text in a lending document. The returned summary consists
of information about documents grouped together by a common document
type. Information like detected signatures, page numbers, and split
documents is returned with respect to the type of grouped document.

You start asynchronous text analysis by calling
`start_lending_analysis`, which returns a job identifier (`JobId`). When
the text analysis operation finishes, Amazon Textract publishes a
completion status to the Amazon Simple Notification Service (Amazon SNS)
topic that's registered in the initial call to `start_lending_analysis`.

To get the results of the text analysis operation, first check that the
status value published to the Amazon SNS topic is SUCCEEDED. If so, call
`get_lending_analysis_summary`, and pass the job identifier (`JobId`)
from the initial call to `start_lending_analysis`.

### Usage

    textract_get_lending_analysis_summary(JobId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="textract_get_lending_analysis_summary_:_JobId">JobId</code></td>
<td><p>[required] A unique identifier for the lending or text-detection
job. The <code>JobId</code> is returned from StartLendingAnalysis. A
<code>JobId</code> value is only valid for 7 days.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DocumentMetadata = list(
        Pages = 123
      ),
      JobStatus = "IN_PROGRESS"|"SUCCEEDED"|"FAILED"|"PARTIAL_SUCCESS",
      Summary = list(
        DocumentGroups = list(
          list(
            Type = "string",
            SplitDocuments = list(
              list(
                Index = 123,
                Pages = list(
                  123
                )
              )
            ),
            DetectedSignatures = list(
              list(
                Page = 123
              )
            ),
            UndetectedSignatures = list(
              list(
                Page = 123
              )
            )
          )
        ),
        UndetectedDocumentTypes = list(
          "string"
        )
      ),
      Warnings = list(
        list(
          ErrorCode = "string",
          Pages = list(
            123
          )
        )
      ),
      StatusMessage = "string",
      AnalyzeLendingModelVersion = "string"
    )

### Request syntax

    svc$get_lending_analysis_summary(
      JobId = "string"
    )
