<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectwisdomservice_start_content_upload</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get a URL to upload content to a knowledge base

### Description

Get a URL to upload content to a knowledge base. To upload content,
first make a PUT request to the returned URL with your file, making sure
to include the required headers. Then use `create_content` to finalize
the content creation process or `update_content` to modify an existing
resource. You can only upload content to a knowledge base of type
CUSTOM.

### Usage

    connectwisdomservice_start_content_upload(contentType, knowledgeBaseId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connectwisdomservice_start_content_upload_:_contentType">contentType</code></td>
<td><p>[required] The type of content to upload.</p></td>
</tr>
<tr class="even">
<td><code
id="connectwisdomservice_start_content_upload_:_knowledgeBaseId">knowledgeBaseId</code></td>
<td><p>[required] The identifier of the knowledge base. Can be either
the ID or the ARN. URLs cannot contain the ARN.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      headersToInclude = list(
        "string"
      ),
      uploadId = "string",
      url = "string",
      urlExpiry = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$start_content_upload(
      contentType = "string",
      knowledgeBaseId = "string"
    )
