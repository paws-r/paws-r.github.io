<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_batch_get_document_status</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the indexing status for one or more documents submitted with the BatchPutDocument API

### Description

Returns the indexing status for one or more documents submitted with the
[BatchPutDocument](https://docs.aws.amazon.com/kendra/latest/APIReference/API_BatchPutDocument.html)
API.

When you use the `batch_put_document` API, documents are indexed
asynchronously. You can use the `batch_get_document_status` API to get
the current status of a list of documents so that you can determine if
they have been successfully indexed.

You can also use the `batch_get_document_status` API to check the status
of the
[BatchDeleteDocument](https://docs.aws.amazon.com/kendra/latest/APIReference/API_BatchDeleteDocument.html)
API. When a document is deleted from the index, Amazon Kendra returns
`NOT_FOUND` as the status.

### Usage

    kendra_batch_get_document_status(IndexId, DocumentInfoList)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kendra_batch_get_document_status_:_IndexId">IndexId</code></td>
<td><p>[required] The identifier of the index to add documents to. The
index ID is returned by the <a
href="https://docs.aws.amazon.com/kendra/latest/APIReference/API_CreateIndex.html">CreateIndex</a>
API.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_batch_get_document_status_:_DocumentInfoList">DocumentInfoList</code></td>
<td><p>[required] A list of <code>DocumentInfo</code> objects that
identify the documents for which to get the status. You identify the
documents by their document ID and optional attributes.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Errors = list(
        list(
          DocumentId = "string",
          ErrorCode = "InternalError"|"InvalidRequest",
          ErrorMessage = "string"
        )
      ),
      DocumentStatusList = list(
        list(
          DocumentId = "string",
          DocumentStatus = "NOT_FOUND"|"PROCESSING"|"INDEXED"|"UPDATED"|"FAILED"|"UPDATE_FAILED",
          FailureCode = "string",
          FailureReason = "string"
        )
      )
    )

### Request syntax

    svc$batch_get_document_status(
      IndexId = "string",
      DocumentInfoList = list(
        list(
          DocumentId = "string",
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
          )
        )
      )
    )
