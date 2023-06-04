<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_delete_document</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the Amazon Web Services Systems Manager document (SSM document) and all managed node associations to the document

### Description

Deletes the Amazon Web Services Systems Manager document (SSM document)
and all managed node associations to the document.

Before you delete the document, we recommend that you use
`delete_association` to disassociate all managed nodes that are
associated with the document.

### Usage

    ssm_delete_document(Name, DocumentVersion, VersionName, Force)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssm_delete_document_:_Name">Name</code></td>
<td><p>[required] The name of the document.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_delete_document_:_DocumentVersion">DocumentVersion</code></td>
<td><p>The version of the document that you want to delete. If not
provided, all versions of the document are deleted.</p></td>
</tr>
<tr class="odd">
<td><code id="ssm_delete_document_:_VersionName">VersionName</code></td>
<td><p>The version name of the document that you want to delete. If not
provided, all versions of the document are deleted.</p></td>
</tr>
<tr class="even">
<td><code id="ssm_delete_document_:_Force">Force</code></td>
<td><p>Some SSM document types require that you specify a
<code>Force</code> flag before you can delete the document. For example,
you must specify a <code>Force</code> flag to delete a document of type
<code>ApplicationConfigurationSchema</code>. You can restrict access to
the <code>Force</code> flag in an Identity and Access Management (IAM)
policy.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_document(
      Name = "string",
      DocumentVersion = "string",
      VersionName = "string",
      Force = TRUE|FALSE
    )
