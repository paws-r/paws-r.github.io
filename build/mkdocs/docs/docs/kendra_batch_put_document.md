<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_batch_put_document</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds one or more documents to an index

### Description

Adds one or more documents to an index.

The `batch_put_document` API enables you to ingest inline documents or a
set of documents stored in an Amazon S3 bucket. Use this API to ingest
your text and unstructured text into an index, add custom attributes to
the documents, and to attach an access control list to the documents
added to the index.

The documents are indexed asynchronously. You can see the progress of
the batch using Amazon Web Services CloudWatch. Any error messages
related to processing the batch are sent to your Amazon Web Services
CloudWatch log.

For an example of ingesting inline documents using Python and Java SDKs,
see [Adding files directly to an
index](https://docs.aws.amazon.com/kendra/latest/dg/in-adding-binary-doc.html).

### Usage

    kendra_batch_put_document(IndexId, RoleArn, Documents,
      CustomDocumentEnrichmentConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="kendra_batch_put_document_:_IndexId">IndexId</code></td>
<td><p>[required] The identifier of the index to add the documents to.
You need to create the index first using the <code>create_index</code>
API.</p></td>
</tr>
<tr class="even">
<td><code id="kendra_batch_put_document_:_RoleArn">RoleArn</code></td>
<td><p>The Amazon Resource Name (ARN) of an IAM role with permission to
access your S3 bucket. For more information, see <a
href="https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html">IAM
access roles for Amazon Kendra</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="kendra_batch_put_document_:_Documents">Documents</code></td>
<td><p>[required] One or more documents to add to the index.</p>
<p>Documents have the following file size limits.</p>
<ul>
<li><p>50 MB total size for any file</p></li>
<li><p>5 MB extracted text for any file</p></li>
</ul>
<p>For more information, see <a
href="https://docs.aws.amazon.com/kendra/latest/dg/quotas.html">Quotas</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_batch_put_document_:_CustomDocumentEnrichmentConfiguration">CustomDocumentEnrichmentConfiguration</code></td>
<td><p>Configuration information for altering your document metadata and
content during the document ingestion process when you use the
<code>batch_put_document</code> API.</p>
<p>For more information on how to create, modify and delete document
metadata, or make other content alterations when you ingest documents
into Amazon Kendra, see <a
href="https://docs.aws.amazon.com/kendra/latest/dg/custom-document-enrichment.html">Customizing
document metadata during the ingestion process</a>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FailedDocuments = list(
        list(
          Id = "string",
          ErrorCode = "InternalError"|"InvalidRequest",
          ErrorMessage = "string"
        )
      )
    )

### Request syntax

    svc$batch_put_document(
      IndexId = "string",
      RoleArn = "string",
      Documents = list(
        list(
          Id = "string",
          Title = "string",
          Blob = raw,
          S3Path = list(
            Bucket = "string",
            Key = "string"
          ),
          Attributes = list(
            list(
              Key = "string",
              Value = list(
                StringValue = "string",
                StringListValue = list(
                  "string"
                ),
                LongValue = 123,
                DateValue = as.POSIXct(
                  "2015-01-01"
                )
              )
            )
          ),
          AccessControlList = list(
            list(
              Name = "string",
              Type = "USER"|"GROUP",
              Access = "ALLOW"|"DENY",
              DataSourceId = "string"
            )
          ),
          HierarchicalAccessControlList = list(
            list(
              PrincipalList = list(
                list(
                  Name = "string",
                  Type = "USER"|"GROUP",
                  Access = "ALLOW"|"DENY",
                  DataSourceId = "string"
                )
              )
            )
          ),
          ContentType = "PDF"|"HTML"|"MS_WORD"|"PLAIN_TEXT"|"PPT"|"RTF"|"XML"|"XSLT"|"MS_EXCEL"|"CSV"|"JSON"|"MD",
          AccessControlConfigurationId = "string"
        )
      ),
      CustomDocumentEnrichmentConfiguration = list(
        InlineConfigurations = list(
          list(
            Condition = list(
              ConditionDocumentAttributeKey = "string",
              Operator = "GreaterThan"|"GreaterThanOrEquals"|"LessThan"|"LessThanOrEquals"|"Equals"|"NotEquals"|"Contains"|"NotContains"|"Exists"|"NotExists"|"BeginsWith",
              ConditionOnValue = list(
                StringValue = "string",
                StringListValue = list(
                  "string"
                ),
                LongValue = 123,
                DateValue = as.POSIXct(
                  "2015-01-01"
                )
              )
            ),
            Target = list(
              TargetDocumentAttributeKey = "string",
              TargetDocumentAttributeValueDeletion = TRUE|FALSE,
              TargetDocumentAttributeValue = list(
                StringValue = "string",
                StringListValue = list(
                  "string"
                ),
                LongValue = 123,
                DateValue = as.POSIXct(
                  "2015-01-01"
                )
              )
            ),
            DocumentContentDeletion = TRUE|FALSE
          )
        ),
        PreExtractionHookConfiguration = list(
          InvocationCondition = list(
            ConditionDocumentAttributeKey = "string",
            Operator = "GreaterThan"|"GreaterThanOrEquals"|"LessThan"|"LessThanOrEquals"|"Equals"|"NotEquals"|"Contains"|"NotContains"|"Exists"|"NotExists"|"BeginsWith",
            ConditionOnValue = list(
              StringValue = "string",
              StringListValue = list(
                "string"
              ),
              LongValue = 123,
              DateValue = as.POSIXct(
                "2015-01-01"
              )
            )
          ),
          LambdaArn = "string",
          S3Bucket = "string"
        ),
        PostExtractionHookConfiguration = list(
          InvocationCondition = list(
            ConditionDocumentAttributeKey = "string",
            Operator = "GreaterThan"|"GreaterThanOrEquals"|"LessThan"|"LessThanOrEquals"|"Equals"|"NotEquals"|"Contains"|"NotContains"|"Exists"|"NotExists"|"BeginsWith",
            ConditionOnValue = list(
              StringValue = "string",
              StringListValue = list(
                "string"
              ),
              LongValue = 123,
              DateValue = as.POSIXct(
                "2015-01-01"
              )
            )
          ),
          LambdaArn = "string",
          S3Bucket = "string"
        ),
        RoleArn = "string"
      )
    )
