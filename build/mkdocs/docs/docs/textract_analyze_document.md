<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>textract_analyze_document</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Analyzes an input document for relationships between detected items

### Description

Analyzes an input document for relationships between detected items.

The types of information returned are as follows:

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
    relationship with the value of `FeatureTypes`).

-   Signatures. A SIGNATURE `Block` object contains the location
    information of a signature in a document. If used in conjunction
    with forms or tables, a signature can be given a Key-Value pairing
    or be detected in the cell of a table.

-   Query. A QUERY Block object contains the query text, alias and link
    to the associated Query results block object.

-   Query Result. A QUERY\_RESULT Block object contains the answer to
    the query and an ID that connects it to the query asked. This Block
    also contains a confidence score.

Selection elements such as check boxes and option buttons (radio
buttons) can be detected in form data and in tables. A
SELECTION\_ELEMENT `Block` object contains information about a selection
element, including the selection status.

You can choose which type of analysis to perform by specifying the
`FeatureTypes` list.

The output is returned in a list of `Block` objects.

`analyze_document` is a synchronous operation. To analyze documents
asynchronously, use `start_document_analysis`.

For more information, see [Document Text
Analysis](https://docs.aws.amazon.com/textract/latest/dg/how-it-works-analyzing.html).

### Usage

    textract_analyze_document(Document, FeatureTypes, HumanLoopConfig,
      QueriesConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="textract_analyze_document_:_Document">Document</code></td>
<td><p>[required] The input document as base64-encoded bytes or an
Amazon S3 object. If you use the AWS CLI to call Amazon Textract
operations, you can't pass image bytes. The document must be an image in
JPEG, PNG, PDF, or TIFF format.</p>
<p>If you're using an AWS SDK to call Amazon Textract, you might not
need to base64-encode image bytes that are passed using the
<code>Bytes</code> field.</p></td>
</tr>
<tr class="even">
<td><code
id="textract_analyze_document_:_FeatureTypes">FeatureTypes</code></td>
<td><p>[required] A list of the types of analysis to perform. Add TABLES
to the list to return information about the tables that are detected in
the input document. Add FORMS to return detected form data. Add
SIGNATURES to return the locations of detected signatures. To perform
both forms and table analysis, add TABLES and FORMS to
<code>FeatureTypes</code>. To detect signatures within form data and
table data, add SIGNATURES to either TABLES or FORMS. All lines and
words detected in the document are included in the response (including
text that isn't related to the value of
<code>FeatureTypes</code>).</p></td>
</tr>
<tr class="odd">
<td><code
id="textract_analyze_document_:_HumanLoopConfig">HumanLoopConfig</code></td>
<td><p>Sets the configuration for the human in the loop workflow for
analyzing documents.</p></td>
</tr>
<tr class="even">
<td><code
id="textract_analyze_document_:_QueriesConfig">QueriesConfig</code></td>
<td><p>Contains Queries and the alias for those Queries, as determined
by the input.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DocumentMetadata = list(
        Pages = 123
      ),
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
      HumanLoopActivationOutput = list(
        HumanLoopArn = "string",
        HumanLoopActivationReasons = list(
          "string"
        ),
        HumanLoopActivationConditionsEvaluationResults = "string"
      ),
      AnalyzeDocumentModelVersion = "string"
    )

### Request syntax

    svc$analyze_document(
      Document = list(
        Bytes = raw,
        S3Object = list(
          Bucket = "string",
          Name = "string",
          Version = "string"
        )
      ),
      FeatureTypes = list(
        "TABLES"|"FORMS"|"QUERIES"|"SIGNATURES"
      ),
      HumanLoopConfig = list(
        HumanLoopName = "string",
        FlowDefinitionArn = "string",
        DataAttributes = list(
          ContentClassifiers = list(
            "FreeOfPersonallyIdentifiableInformation"|"FreeOfAdultContent"
          )
        )
      ),
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
