<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kendra_batch_delete_document</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes one or more documents from an index

### Description

Removes one or more documents from an index. The documents must have
been added with the `batch_put_document` API.

The documents are deleted asynchronously. You can see the progress of
the deletion by using Amazon Web Services CloudWatch. Any error messages
related to the processing of the batch are sent to you CloudWatch log.

### Usage

    kendra_batch_delete_document(IndexId, DocumentIdList,
      DataSourceSyncJobMetricTarget)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kendra_batch_delete_document_:_IndexId">IndexId</code></td>
<td><p>[required] The identifier of the index that contains the
documents to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="kendra_batch_delete_document_:_DocumentIdList">DocumentIdList</code></td>
<td><p>[required] One or more identifiers for documents to delete from
the index.</p></td>
</tr>
<tr class="odd">
<td><code
id="kendra_batch_delete_document_:_DataSourceSyncJobMetricTarget">DataSourceSyncJobMetricTarget</code></td>
<td></td>
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

    svc$batch_delete_document(
      IndexId = "string",
      DocumentIdList = list(
        "string"
      ),
      DataSourceSyncJobMetricTarget = list(
        DataSourceId = "string",
        DataSourceSyncJobId = "string"
      )
    )
