<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>comprehend_detect_entities</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Detects named entities in input text when you use the pre-trained model

### Description

Detects named entities in input text when you use the pre-trained model.
Detects custom entities if you have a custom entity recognition model.

When detecting named entities using the pre-trained model, use plain
text as the input. For more information about named entities, see
[Entities](https://docs.aws.amazon.com/comprehend/latest/dg/how-entities.html)
in the Comprehend Developer Guide.

When you use a custom entity recognition model, you can input plain text
or you can upload a single-page input document (text, PDF, Word, or
image).

If the system detects errors while processing a page in the input
document, the API response includes an entry in `Errors` for each error.

If the system detects a document-level error in your input document, the
API returns an `InvalidRequestException` error response. For details
about this exception, see [Errors in semi-structured
documents](https://docs.aws.amazon.com/comprehend/latest/dg/) in the
Comprehend Developer Guide.

### Usage

    comprehend_detect_entities(Text, LanguageCode, EndpointArn, Bytes,
      DocumentReaderConfig)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="comprehend_detect_entities_:_Text">Text</code></td>
<td><p>A UTF-8 text string. The maximum string size is 100 KB. If you
enter text using this parameter, do not use the <code>Bytes</code>
parameter.</p></td>
</tr>
<tr class="even">
<td><code
id="comprehend_detect_entities_:_LanguageCode">LanguageCode</code></td>
<td><p>The language of the input documents. You can specify any of the
primary languages supported by Amazon Comprehend. If your request
includes the endpoint for a custom entity recognition model, Amazon
Comprehend uses the language of your custom model, and it ignores any
language code that you specify here.</p>
<p>All input documents must be in the same language.</p></td>
</tr>
<tr class="odd">
<td><code
id="comprehend_detect_entities_:_EndpointArn">EndpointArn</code></td>
<td><p>The Amazon Resource Name of an endpoint that is associated with a
custom entity recognition model. Provide an endpoint if you want to
detect entities by using your own custom model instead of the default
model that is used by Amazon Comprehend.</p>
<p>If you specify an endpoint, Amazon Comprehend uses the language of
your custom model, and it ignores any language code that you provide in
your request.</p>
<p>For information about endpoints, see <a
href="https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html">Managing
endpoints</a>.</p></td>
</tr>
<tr class="even">
<td><code id="comprehend_detect_entities_:_Bytes">Bytes</code></td>
<td><p>This field applies only when you use a custom entity recognition
model that was trained with PDF annotations. For other cases, enter your
text input in the <code>Text</code> field.</p>
<p>Use the <code>Bytes</code> parameter to input a text, PDF, Word or
image file. Using a plain-text file in the <code>Bytes</code> parameter
is equivelent to using the <code>Text</code> parameter (the
<code>Entities</code> field in the response is identical).</p>
<p>You can also use the <code>Bytes</code> parameter to input an Amazon
Textract <code>DetectDocumentText</code> or <code>AnalyzeDocument</code>
output file.</p>
<p>Provide the input document as a sequence of base64-encoded bytes. If
your code uses an Amazon Web Services SDK to detect entities, the SDK
may encode the document file bytes for you.</p>
<p>The maximum length of this field depends on the input document type.
For details, see <a
href="https://docs.aws.amazon.com/comprehend/latest/dg/idp-inputs-sync.html">Inputs
for real-time custom analysis</a> in the Comprehend Developer Guide.</p>
<p>If you use the <code>Bytes</code> parameter, do not use the
<code>Text</code> parameter.</p></td>
</tr>
<tr class="odd">
<td><code
id="comprehend_detect_entities_:_DocumentReaderConfig">DocumentReaderConfig</code></td>
<td><p>Provides configuration parameters to override the default actions
for extracting text from PDF documents and image files.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Entities = list(
        list(
          Score = 123.0,
          Type = "PERSON"|"LOCATION"|"ORGANIZATION"|"COMMERCIAL_ITEM"|"EVENT"|"DATE"|"QUANTITY"|"TITLE"|"OTHER",
          Text = "string",
          BeginOffset = 123,
          EndOffset = 123,
          BlockReferences = list(
            list(
              BlockId = "string",
              BeginOffset = 123,
              EndOffset = 123,
              ChildBlocks = list(
                list(
                  ChildBlockId = "string",
                  BeginOffset = 123,
                  EndOffset = 123
                )
              )
            )
          )
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
      Blocks = list(
        list(
          Id = "string",
          BlockType = "LINE"|"WORD",
          Text = "string",
          Page = 123,
          Geometry = list(
            BoundingBox = list(
              Height = 123.0,
              Left = 123.0,
              Top = 123.0,
              Width = 123.0
            ),
            Polygon = list(
              list(
                X = 123.0,
                Y = 123.0
              )
            )
          ),
          Relationships = list(
            list(
              Ids = list(
                "string"
              ),
              Type = "CHILD"
            )
          )
        )
      ),
      Errors = list(
        list(
          Page = 123,
          ErrorCode = "TEXTRACT_BAD_PAGE"|"TEXTRACT_PROVISIONED_THROUGHPUT_EXCEEDED"|"PAGE_CHARACTERS_EXCEEDED"|"PAGE_SIZE_EXCEEDED"|"INTERNAL_SERVER_ERROR",
          ErrorMessage = "string"
        )
      )
    )

### Request syntax

    svc$detect_entities(
      Text = "string",
      LanguageCode = "en"|"es"|"fr"|"de"|"it"|"pt"|"ar"|"hi"|"ja"|"ko"|"zh"|"zh-TW",
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
