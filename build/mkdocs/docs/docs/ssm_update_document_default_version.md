<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_update_document_default_version</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Set the default version of a document

### Description

Set the default version of a document.

If you change a document version for a State Manager association,
Systems Manager immediately runs the association unless you previously
specifed the `apply-only-at-cron-interval` parameter.

### Usage

    ssm_update_document_default_version(Name, DocumentVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_update_document_default_version_:_Name">Name</code></td>
<td><p>[required] The name of a custom document that you want to set as
the default version.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_update_document_default_version_:_DocumentVersion">DocumentVersion</code></td>
<td><p>[required] The version of a custom document that you want to set
as the default version.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Description = list(
        Name = "string",
        DefaultVersion = "string",
        DefaultVersionName = "string"
      )
    )

### Request syntax

    svc$update_document_default_version(
      Name = "string",
      DocumentVersion = "string"
    )
