<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>textract_detect_document_text</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Detects text in the input document

### Description

Detects text in the input document. Amazon Textract can detect lines of
text and the words that make up a line of text. The input document must
be in one of the following image formats: JPEG, PNG, PDF, or TIFF.
`detect_document_text` returns the detected text in an array of Block
objects.

Each document page has as an associated `Block` of type PAGE. Each PAGE
`Block` object is the parent of LINE `Block` objects that represent the
lines of detected text on a page. A LINE `Block` object is a parent for
each word that makes up the line. Words are represented by `Block`
objects of type WORD.

`detect_document_text` is a synchronous operation. To analyze documents
asynchronously, use `start_document_text_detection`.

For more information, see [Document Text
Detection](https://docs.aws.amazon.com/textract/latest/dg/how-it-works-detecting.html).

### Usage

    textract_detect_document_text(Document)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="textract_detect_document_text_:_Document">Document</code></td>
<td><p>[required] The input document as base64-encoded bytes or an
Amazon S3 object. If you use the AWS CLI to call Amazon Textract
operations, you can't pass image bytes. The document must be an image in
JPEG or PNG format.</p>
<p>If you're using an AWS SDK to call Amazon Textract, you might not
need to base64-encode image bytes that are passed using the
<code>Bytes</code> field.</p></td>
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
      DetectDocumentTextModelVersion = "string"
    )

### Request syntax

    svc$detect_document_text(
      Document = list(
        Bytes = raw,
        S3Object = list(
          Bucket = "string",
          Name = "string",
          Version = "string"
        )
      )
    )
