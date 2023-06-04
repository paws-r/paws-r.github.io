<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_modify_document_permission</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Shares a Amazon Web Services Systems Manager document (SSM document)publicly or privately

### Description

Shares a Amazon Web Services Systems Manager document (SSM
document)publicly or privately. If you share a document privately, you
must specify the Amazon Web Services user IDs for those people who can
use the document. If you share a document publicly, you must specify
*All* as the account ID.

### Usage

    ssm_modify_document_permission(Name, PermissionType, AccountIdsToAdd,
      AccountIdsToRemove, SharedDocumentVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ssm_modify_document_permission_:_Name">Name</code></td>
<td><p>[required] The name of the document that you want to
share.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_modify_document_permission_:_PermissionType">PermissionType</code></td>
<td><p>[required] The permission type for the document. The permission
type can be <em>Share</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_modify_document_permission_:_AccountIdsToAdd">AccountIdsToAdd</code></td>
<td><p>The Amazon Web Services users that should have access to the
document. The account IDs can either be a group of account IDs or
<em>All</em>.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_modify_document_permission_:_AccountIdsToRemove">AccountIdsToRemove</code></td>
<td><p>The Amazon Web Services users that should no longer have access
to the document. The Amazon Web Services user can either be a group of
account IDs or <em>All</em>. This action has a higher priority than
<em>AccountIdsToAdd</em>. If you specify an ID to add and the same ID to
remove, the system removes access to the document.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_modify_document_permission_:_SharedDocumentVersion">SharedDocumentVersion</code></td>
<td><p>(Optional) The version of the document to share. If it isn't
specified, the system choose the <code>Default</code> version to
share.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$modify_document_permission(
      Name = "string",
      PermissionType = "Share",
      AccountIdsToAdd = list(
        "string"
      ),
      AccountIdsToRemove = list(
        "string"
      ),
      SharedDocumentVersion = "string"
    )
