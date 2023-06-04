<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>textract_get_document_text_detection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the results for an Amazon Textract asynchronous operation that detects text in a document

### Description

Gets the results for an Amazon Textract asynchronous operation that
detects text in a document. Amazon Textract can detect lines of text and
the words that make up a line of text.

You start asynchronous text detection by calling
`start_document_text_detection`, which returns a job identifier
(`JobId`). When the text detection operation finishes, Amazon Textract
publishes a completion status to the Amazon Simple Notification Service
(Amazon SNS) topic that's registered in the initial call to
`start_document_text_detection`. To get the results of the
text-detection operation, first check that the status value published to
the Amazon SNS topic is `SUCCEEDED`. If so, call
`get_document_text_detection`, and pass the job identifier (`JobId`)
from the initial call to `start_document_text_detection`.

`get_document_text_detection` returns an array of Block objects.

Each document page has as an associated `Block` of type PAGE. Each PAGE
`Block` object is the parent of LINE `Block` objects that represent the
lines of detected text on a page. A LINE `Block` object is a parent for
each word that makes up the line. Words are represented by `Block`
objects of type WORD.

Use the MaxResults parameter to limit the number of blocks that are
returned. If there are more results than specified in `MaxResults`, the
value of `NextToken` in the operation response contains a pagination
token for getting the next set of results. To get the next page of
results, call `get_document_text_detection`, and populate the
`NextToken` request parameter with the token value that's returned from
the previous call to `get_document_text_detection`.

For more information, see [Document Text
Detection](https://docs.aws.amazon.com/textract/latest/dg/how-it-works-detecting.html).

### Usage

    textract_get_document_text_detection(JobId, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="textract_get_document_text_detection_:_JobId">JobId</code></td>
<td><p>[required] A unique identifier for the text detection job. The
<code>JobId</code> is returned from
<code>start_document_text_detection</code>. A <code>JobId</code> value
is only valid for 7 days.</p></td>
</tr>
<tr class="even">
<td><code
id="textract_get_document_text_detection_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return per paginated call. The
largest value you can specify is 1,000. If you specify a value greater
than 1,000, a maximum of 1,000 results is returned. The default value is
1,000.</p></td>
</tr>
<tr class="odd">
<td><code
id="textract_get_document_text_detection_:_NextToken">NextToken</code></td>
<td><p>If the previous response was incomplete (because there are more
blocks to retrieve), Amazon Textract returns a pagination token in the
response. You can use this pagination token to retrieve the next set of
blocks.</p></td>
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
      NextToken = "string",
      Blocks = list(
        list(
          BlockType = "KEY_VALUE_SET"|"PAGE"|"LINE"|"WORD"|"TABLE"|"CELL"|"SELECTION_ELEMENT"|"MERGED_CELL"|"TITLE"|"QUERY"|"QUERY_RESULT"|"SIGNATURE"|"TABLE_TITLE"|"TABLE_FOOTER",
          Confidence = 123.0,
          Text = "string",
          TextType = "HANDWRITING"|"PRINTED",
          RowIndex = 123,
          ColumnIndex = 123,
          RowSpan = 123,
          ColumnSpan = 123,
          Geometry = list(
            BoundingBox = list(
              Width = 123.0,
              Height = 123.0,
              Left = 123.0,
              Top = 123.0
            ),
            Polygon = list(
              list(
                X = 123.0,
                Y = 123.0
              )
            )
          ),
          Id = "string",
          Relationships = list(
            list(
              Type = "VALUE"|"CHILD"|"COMPLEX_FEATURES"|"MERGED_CELL"|"TITLE"|"ANSWER"|"TABLE"|"TABLE_TITLE"|"TABLE_FOOTER",
              Ids = list(
                "string"
              )
            )
          ),
          EntityTypes = list(
            "KEY"|"VALUE"|"COLUMN_HEADER"|"TABLE_TITLE"|"TABLE_FOOTER"|"TABLE_SECTION_TITLE"|"TABLE_SUMMARY"|"STRUCTURED_TABLE"|"SEMI_STRUCTURED_TABLE"
          ),
          SelectionStatus = "SELECTED"|"NOT_SELECTED",
          Page = 123,
          Query = list(
            Text = "string",
            Alias = "string",
            Pages = list(
              "string"
            )
          )
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
      DetectDocumentTextModelVersion = "string"
    )

### Request syntax

    svc$get_document_text_detection(
      JobId = "string",
      MaxResults = 123,
      NextToken = "string"
    )
