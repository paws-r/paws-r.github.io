<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sesv2_create_import_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an import job for a data destination

### Description

Creates an import job for a data destination.

### Usage

    sesv2_create_import_job(ImportDestination, ImportDataSource)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sesv2_create_import_job_:_ImportDestination">ImportDestination</code></td>
<td><p>[required] The destination for the import job.</p></td>
</tr>
<tr class="even">
<td><code
id="sesv2_create_import_job_:_ImportDataSource">ImportDataSource</code></td>
<td><p>[required] The data source for the import job.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JobId = "string"
    )

### Request syntax

    svc$create_import_job(
      ImportDestination = list(
        SuppressionListDestination = list(
          SuppressionListImportAction = "DELETE"|"PUT"
        ),
        ContactListDestination = list(
          ContactListName = "string",
          ContactListImportAction = "DELETE"|"PUT"
        )
      ),
      ImportDataSource = list(
        S3Url = "string",
        DataFormat = "CSV"|"JSON"
      )
    )
