<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehend_classify_document</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new document classification request to analyze a single document in real-time, using a previously created and trained custom model and an endpoint

### Description

Creates a new document classification request to analyze a single
document in real-time, using a previously created and trained custom
model and an endpoint.

You can input plain text or you can upload a single-page input document
(text, PDF, Word, or image).

If the system detects errors while processing a page in the input
document, the API response includes an entry in `Errors` that describes
the errors.

If the system detects a document-level error in your input document, the
API returns an `InvalidRequestException` error response. For details
about this exception, see [Errors in semi-structured
documents](https://docs.aws.amazon.com/comprehend/latest/dg/) in the
Comprehend Developer Guide.

### Usage

    comprehend_classify_document(Text, EndpointArn, Bytes,
      DocumentReaderConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="comprehend_classify_document_:_Text">Text</code></td>
<td><p>The document text to be analyzed. If you enter text using this
parameter, do not use the <code>Bytes</code> parameter.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_classify_document_:_EndpointArn">EndpointArn</code></td>
<td><p>[required] The Amazon Resource Number (ARN) of the endpoint. For
information about endpoints, see <a
href="https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html">Managing
endpoints</a>.</p></td>
</tr>
<tr class="odd">
<td><code id="comprehend_classify_document_:_Bytes">Bytes</code></td>
<td><p>Use the <code>Bytes</code> parameter to input a text, PDF, Word
or image file. You can also use the <code>Bytes</code> parameter to
input an Amazon Textract <code>DetectDocumentText</code> or
<code>AnalyzeDocument</code> output file.</p>
<p>Provide the input document as a sequence of base64-encoded bytes. If
your code uses an Amazon Web Services SDK to classify documents, the SDK
may encode the document file bytes for you.</p>
<p>The maximum length of this field depends on the input document type.
For details, see <a
href="https://docs.aws.amazon.com/comprehend/latest/dg/idp-inputs-sync.html">Inputs
for real-time custom analysis</a> in the Comprehend Developer Guide.</p>
<p>If you use the <code>Bytes</code> parameter, do not use the
<code>Text</code> parameter.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_classify_document_:_DocumentReaderConfig">DocumentReaderConfig</code></td>
<td><p>Provides configuration parameters to override the default actions
for extracting text from PDF documents and image files.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Classes = list(
        list(
          Name = "string",
          Score = 123.0,
          Page = 123
        )
      ),
      Labels = list(
        list(
          Name = "string",
          Score = 123.0,
          Page = 123
        )
      ),
      DocumentMetadata = list(
        Pages = 123,
        ExtractedCharacters = list(
          list(
            Page = 123,
            Count = 123
          )
        )
      ),
      DocumentType = list(
        list(
          Page = 123,
          Type = "NATIVE_PDF"|"SCANNED_PDF"|"MS_WORD"|"IMAGE"|"PLAIN_TEXT"|"TEXTRACT_DETECT_DOCUMENT_TEXT_JSON"|"TEXTRACT_ANALYZE_DOCUMENT_JSON"
        )
      ),
      Errors = list(
        list(
          Page = 123,
          ErrorCode = "TEXTRACT_BAD_PAGE"|"TEXTRACT_PROVISIONED_THROUGHPUT_EXCEEDED"|"PAGE_CHARACTERS_EXCEEDED"|"PAGE_SIZE_EXCEEDED"|"INTERNAL_SERVER_ERROR",
          ErrorMessage = "string"
        )
      ),
      Warnings = list(
        list(
          Page = 123,
          WarnCode = "INFERENCING_PLAINTEXT_WITH_NATIVE_TRAINED_MODEL"|"INFERENCING_NATIVE_DOCUMENT_WITH_PLAINTEXT_TRAINED_MODEL",
          WarnMessage = "string"
        )
      )
    )

### Request syntax

    svc$classify_document(
      Text = "string",
      EndpointArn = "string",
      Bytes = raw,
      DocumentReaderConfig = list(
        DocumentReadAction = "TEXTRACT_DETECT_DOCUMENT_TEXT"|"TEXTRACT_ANALYZE_DOCUMENT",
        DocumentReadMode = "SERVICE_DEFAULT"|"FORCE_DOCUMENT_READ_ACTION",
        FeatureTypes = list(
          "TABLES"|"FORMS"
        )
      )
    )
