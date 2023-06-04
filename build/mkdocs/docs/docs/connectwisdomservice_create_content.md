<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectwisdomservice_create_content</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates Wisdom content

### Description

Creates Wisdom content. Before to calling this API, use
`start_content_upload` to upload an asset.

### Usage

    connectwisdomservice_create_content(clientToken, knowledgeBaseId,
      metadata, name, overrideLinkOutUri, tags, title, uploadId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connectwisdomservice_create_content_:_clientToken">clientToken</code></td>
<td><p>A unique, case-sensitive identifier that you provide to ensure
the idempotency of the request. If not provided, the Amazon Web Services
SDK populates this field. For more information about idempotency, see <a
href="https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/">Making
retries safe with idempotent APIs</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="connectwisdomservice_create_content_:_knowledgeBaseId">knowledgeBaseId</code></td>
<td><p>[required] The identifier of the knowledge base. Can be either
the ID or the ARN. URLs cannot contain the ARN.</p></td>
</tr>
<tr class="odd">
<td><code
id="connectwisdomservice_create_content_:_metadata">metadata</code></td>
<td><p>A key/value map to store attributes without affecting tagging or
recommendations. For example, when synchronizing data between an
external system and Wisdom, you can store an external version identifier
as metadata to utilize for determining drift.</p></td>
</tr>
<tr class="even">
<td><code
id="connectwisdomservice_create_content_:_name">name</code></td>
<td><p>[required] The name of the content. Each piece of content in a
knowledge base must have a unique name. You can retrieve a piece of
content using only its knowledge base and its name with the
<code>search_content</code> API.</p></td>
</tr>
<tr class="odd">
<td><code
id="connectwisdomservice_create_content_:_overrideLinkOutUri">overrideLinkOutUri</code></td>
<td><p>The URI you want to use for the article. If the knowledge base
has a templateUri, setting this argument overrides it for this piece of
content.</p></td>
</tr>
<tr class="even">
<td><code
id="connectwisdomservice_create_content_:_tags">tags</code></td>
<td><p>The tags used to organize, track, or control access for this
resource.</p></td>
</tr>
<tr class="odd">
<td><code
id="connectwisdomservice_create_content_:_title">title</code></td>
<td><p>The title of the content. If not set, the title is equal to the
name.</p></td>
</tr>
<tr class="even">
<td><code
id="connectwisdomservice_create_content_:_uploadId">uploadId</code></td>
<td><p>[required] A pointer to the uploaded asset. This value is
returned by <code>start_content_upload</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      content = list(
        contentArn = "string",
        contentId = "string",
        contentType = "string",
        knowledgeBaseArn = "string",
        knowledgeBaseId = "string",
        linkOutUri = "string",
        metadata = list(
          "string"
        ),
        name = "string",
        revisionId = "string",
        status = "CREATE_IN_PROGRESS"|"CREATE_FAILED"|"ACTIVE"|"DELETE_IN_PROGRESS"|"DELETE_FAILED"|"DELETED"|"UPDATE_FAILED",
        tags = list(
          "string"
        ),
        title = "string",
        url = "string",
        urlExpiry = as.POSIXct(
          "2015-01-01"
        )
      )
    )

### Request syntax

    svc$create_content(
      clientToken = "string",
      knowledgeBaseId = "string",
      metadata = list(
        "string"
      ),
      name = "string",
      overrideLinkOutUri = "string",
      tags = list(
        "string"
      ),
      title = "string",
      uploadId = "string"
    )
