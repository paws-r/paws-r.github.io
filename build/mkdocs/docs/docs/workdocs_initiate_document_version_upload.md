<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workdocs_initiate_document_version_upload</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new document object and version object

### Description

Creates a new document object and version object.

The client specifies the parent folder ID and name of the document to
upload. The ID is optionally specified when creating a new version of an
existing document. This is the first step to upload a document. Next,
upload the document to the URL returned from the call, and then call
`update_document_version`.

To cancel the document upload, call `abort_document_version_upload`.

### Usage

    workdocs_initiate_document_version_upload(AuthenticationToken, Id, Name,
      ContentCreatedTimestamp, ContentModifiedTimestamp, ContentType,
      DocumentSizeInBytes, ParentFolderId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workdocs_initiate_document_version_upload_:_AuthenticationToken">AuthenticationToken</code></td>
<td><p>Amazon WorkDocs authentication token. Not required when using
Amazon Web Services administrator credentials to access the
API.</p></td>
</tr>
<tr class="even">
<td><code
id="workdocs_initiate_document_version_upload_:_Id">Id</code></td>
<td><p>The ID of the document.</p></td>
</tr>
<tr class="odd">
<td><code
id="workdocs_initiate_document_version_upload_:_Name">Name</code></td>
<td><p>The name of the document.</p></td>
</tr>
<tr class="even">
<td><code
id="workdocs_initiate_document_version_upload_:_ContentCreatedTimestamp">ContentCreatedTimestamp</code></td>
<td><p>The timestamp when the content of the document was originally
created.</p></td>
</tr>
<tr class="odd">
<td><code
id="workdocs_initiate_document_version_upload_:_ContentModifiedTimestamp">ContentModifiedTimestamp</code></td>
<td><p>The timestamp when the content of the document was
modified.</p></td>
</tr>
<tr class="even">
<td><code
id="workdocs_initiate_document_version_upload_:_ContentType">ContentType</code></td>
<td><p>The content type of the document.</p></td>
</tr>
<tr class="odd">
<td><code
id="workdocs_initiate_document_version_upload_:_DocumentSizeInBytes">DocumentSizeInBytes</code></td>
<td><p>The size of the document, in bytes.</p></td>
</tr>
<tr class="even">
<td><code
id="workdocs_initiate_document_version_upload_:_ParentFolderId">ParentFolderId</code></td>
<td><p>The ID of the parent folder.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Metadata = list(
        Id = "string",
        CreatorId = "string",
        ParentFolderId = "string",
        CreatedTimestamp = as.POSIXct(
          "2015-01-01"
        ),
        ModifiedTimestamp = as.POSIXct(
          "2015-01-01"
        ),
        LatestVersionMetadata = list(
          Id = "string",
          Name = "string",
          ContentType = "string",
          Size = 123,
          Signature = "string",
          Status = "INITIALIZED"|"ACTIVE",
          CreatedTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          ModifiedTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          ContentCreatedTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          ContentModifiedTimestamp = as.POSIXct(
            "2015-01-01"
          ),
          CreatorId = "string",
          Thumbnail = list(
            "string"
          ),
          Source = list(
            "string"
          )
        ),
        ResourceState = "ACTIVE"|"RESTORING"|"RECYCLING"|"RECYCLED",
        Labels = list(
          "string"
        )
      ),
      UploadMetadata = list(
        UploadUrl = "string",
        SignedHeaders = list(
          "string"
        )
      )
    )

### Request syntax

    svc$initiate_document_version_upload(
      AuthenticationToken = "string",
      Id = "string",
      Name = "string",
      ContentCreatedTimestamp = as.POSIXct(
        "2015-01-01"
      ),
      ContentModifiedTimestamp = as.POSIXct(
        "2015-01-01"
      ),
      ContentType = "string",
      DocumentSizeInBytes = 123,
      ParentFolderId = "string"
    )
