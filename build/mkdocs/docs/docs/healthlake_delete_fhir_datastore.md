<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>healthlake_delete_fhir_datastore</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a Data Store

### Description

Deletes a Data Store.

### Usage

    healthlake_delete_fhir_datastore(DatastoreId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="healthlake_delete_fhir_datastore_:_DatastoreId">DatastoreId</code></td>
<td><p>The AWS-generated ID for the Data Store to be deleted.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      DatastoreId = "string",
      DatastoreArn = "string",
      DatastoreStatus = "CREATING"|"ACTIVE"|"DELETING"|"DELETED",
      DatastoreEndpoint = "string"
    )

### Request syntax

    svc$delete_fhir_datastore(
      DatastoreId = "string"
    )
