<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>textract_get_document_analysis</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets the results for an Amazon Textract asynchronous operation that analyzes text in a document

### Description

Gets the results for an Amazon Textract asynchronous operation that
analyzes text in a document.

You start asynchronous text analysis by calling
`start_document_analysis`, which returns a job identifier (`JobId`).
When the text analysis operation finishes, Amazon Textract publishes a
completion status to the Amazon Simple Notification Service (Amazon SNS)
topic that's registered in the initial call to
`start_document_analysis`. To get the results of the text-detection
operation, first check that the status value published to the Amazon SNS
topic is `SUCCEEDED`. If so, call `get_document_analysis`, and pass the
job identifier (`JobId`) from the initial call to
`start_document_analysis`.

`get_document_analysis` returns an array of Block objects. The following
types of information are returned:

-   Form data (key-value pairs). The related information is returned in
    two Block objects, each of type `KEY_VALUE_SET`: a KEY `Block`
    object and a VALUE `Block` object. For example, *Name: Ana Silva
    Carolina* contains a key and value. *Name:* is the key. *Ana Silva
    Carolina* is the value.

-   Table and table cell data. A TABLE `Block` object contains
    information about a detected table. A CELL `Block` object is
    returned for each cell in a table.

-   Lines and words of text. A LINE `Block` object contains one or more
    WORD `Block` objects. All lines and words that are detected in the
    document are returned (including text that doesn't have a
    relationship with the value of the `start_document_analysis`
    `FeatureTypes` input parameter).

-   Query. A QUERY Block object contains the query text, alias and link
    to the associated Query results block object.

-   Query Results. A QUERY\_RESULT Block object contains the answer to
    the query and an ID that connects it to the query asked. This Block
    also contains a confidence score.

While processing a document with queries, look out for
`INVALID_REQUEST_PARAMETERS` output. This indicates that either the per
page query limit has been exceeded or that the operation is trying to
query a page in the document which doesn’t exist.

Selection elements such as check boxes and option buttons (radio
buttons) can be detected in form data and in tables. A
SELECTION\_ELEMENT `Block` object contains information about a selection
element, including the selection status.

Use the `MaxResults` parameter to limit the number of blocks that are
returned. If there are more results than specified in `MaxResults`, the
value of `NextToken` in the operation response contains a pagination
token for getting the next set of results. To get the next page of
results, call `get_document_analysis`, and populate the `NextToken`
request parameter with the token value that's returned from the previous
call to `get_document_analysis`.

For more information, see [Document Text
Analysis](https://docs.aws.amazon.com/textract/latest/dg/how-it-works-analyzing.html).

### Usage

    textract_get_document_analysis(JobId, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="textract_get_document_analysis_:_JobId">JobId</code></td>
<td><p>[required] A unique identifier for the text-detection job. The
<code>JobId</code> is returned from
<code>start_document_analysis</code>. A <code>JobId</code> value is only
valid for 7 days.</p></td>
</tr>
<tr class="even">
<td><code
id="textract_get_document_analysis_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return per paginated call. The
largest value that you can specify is 1,000. If you specify a value
greater than 1,000, a maximum of 1,000 results is returned. The default
value is 1,000.</p></td>
</tr>
<tr class="odd">
<td><code
id="textract_get_document_analysis_:_NextToken">NextToken</code></td>
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
      AnalyzeDocumentModelVersion = "string"
    )

### Request syntax

    svc$get_document_analysis(
      JobId = "string",
      MaxResults = 123,
      NextToken = "string"
    )
