<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lakeformation_delete_objects_on_cancel</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## For a specific governed table, provides a list of Amazon S3 objects that will be written during the current transaction and that can be automatically deleted if the transaction is canceled

### Description

For a specific governed table, provides a list of Amazon S3 objects that
will be written during the current transaction and that can be
automatically deleted if the transaction is canceled. Without this call,
no Amazon S3 objects are automatically deleted when a transaction
cancels.

The Glue ETL library function `write_dynamic_frame.from_catalog()`
includes an option to automatically call `delete_objects_on_cancel`
before writes. For more information, see [Rolling Back Amazon S3
Writes](https://docs.aws.amazon.com/lake-formation/latest/dg/#rolling-back-writes).

### Usage

    lakeformation_delete_objects_on_cancel(CatalogId, DatabaseName,
      TableName, TransactionId, Objects)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lakeformation_delete_objects_on_cancel_:_CatalogId">CatalogId</code></td>
<td><p>The Glue data catalog that contains the governed table. Defaults
to the current account ID.</p></td>
</tr>
<tr class="even">
<td><code
id="lakeformation_delete_objects_on_cancel_:_DatabaseName">DatabaseName</code></td>
<td><p>[required] The database that contains the governed
table.</p></td>
</tr>
<tr class="odd">
<td><code
id="lakeformation_delete_objects_on_cancel_:_TableName">TableName</code></td>
<td><p>[required] The name of the governed table.</p></td>
</tr>
<tr class="even">
<td><code
id="lakeformation_delete_objects_on_cancel_:_TransactionId">TransactionId</code></td>
<td><p>[required] ID of the transaction that the writes occur
in.</p></td>
</tr>
<tr class="odd">
<td><code
id="lakeformation_delete_objects_on_cancel_:_Objects">Objects</code></td>
<td><p>[required] A list of VirtualObject structures, which indicates
the Amazon S3 objects to be deleted if the transaction cancels.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_objects_on_cancel(
      CatalogId = "string",
      DatabaseName = "string",
      TableName = "string",
      TransactionId = "string",
      Objects = list(
        list(
          Uri = "string",
          ETag = "string"
        )
      )
    )
