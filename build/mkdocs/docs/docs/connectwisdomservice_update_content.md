<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectwisdomservice_update_content</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates information about the content

### Description

Updates information about the content.

### Usage

    connectwisdomservice_update_content(contentId, knowledgeBaseId,
      metadata, overrideLinkOutUri, removeOverrideLinkOutUri, revisionId,
      title, uploadId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connectwisdomservice_update_content_:_contentId">contentId</code></td>
<td><p>[required] The identifier of the content. Can be either the ID or
the ARN. URLs cannot contain the ARN.</p></td>
</tr>
<tr class="even">
<td><code
id="connectwisdomservice_update_content_:_knowledgeBaseId">knowledgeBaseId</code></td>
<td><p>[required] The identifier of the knowledge base. Can be either
the ID or the ARN</p></td>
</tr>
<tr class="odd">
<td><code
id="connectwisdomservice_update_content_:_metadata">metadata</code></td>
<td><p>A key/value map to store attributes without affecting tagging or
recommendations. For example, when synchronizing data between an
external system and Wisdom, you can store an external version identifier
as metadata to utilize for determining drift.</p></td>
</tr>
<tr class="even">
<td><code
id="connectwisdomservice_update_content_:_overrideLinkOutUri">overrideLinkOutUri</code></td>
<td><p>The URI for the article. If the knowledge base has a templateUri,
setting this argument overrides it for this piece of content. To remove
an existing <code>overrideLinkOurUri</code>, exclude this argument and
set <code>removeOverrideLinkOutUri</code> to true.</p></td>
</tr>
<tr class="odd">
<td><code
id="connectwisdomservice_update_content_:_removeOverrideLinkOutUri">removeOverrideLinkOutUri</code></td>
<td><p>Unset the existing <code>overrideLinkOutUri</code> if it
exists.</p></td>
</tr>
<tr class="even">
<td><code
id="connectwisdomservice_update_content_:_revisionId">revisionId</code></td>
<td><p>The <code>revisionId</code> of the content resource to update,
taken from an earlier call to <code>get_content</code>,
<code>get_content_summary</code>, <code>search_content</code>, or
<code>list_contents</code>. If included, this argument acts as an
optimistic lock to ensure content was not modified since it was last
read. If it has been modified, this API throws a
<code>PreconditionFailedException</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="connectwisdomservice_update_content_:_title">title</code></td>
<td><p>The title of the content.</p></td>
</tr>
<tr class="even">
<td><code
id="connectwisdomservice_update_content_:_uploadId">uploadId</code></td>
<td><p>A pointer to the uploaded asset. This value is returned by
<code>start_content_upload</code>.</p></td>
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

    svc$update_content(
      contentId = "string",
      knowledgeBaseId = "string",
      metadata = list(
        "string"
      ),
      overrideLinkOutUri = "string",
      removeOverrideLinkOutUri = TRUE|FALSE,
      revisionId = "string",
      title = "string",
      uploadId = "string"
    )
