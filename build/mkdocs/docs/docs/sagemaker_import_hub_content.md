<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sagemaker_import_hub_content</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Import hub content

### Description

Import hub content.

Hub APIs are only callable through SageMaker Studio.

### Usage

    sagemaker_import_hub_content(HubContentName, HubContentVersion,
      HubContentType, DocumentSchemaVersion, HubName, HubContentDisplayName,
      HubContentDescription, HubContentMarkdown, HubContentDocument,
      HubContentSearchKeywords, Tags)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sagemaker_import_hub_content_:_HubContentName">HubContentName</code></td>
<td><p>[required] The name of the hub content to import.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_import_hub_content_:_HubContentVersion">HubContentVersion</code></td>
<td><p>The version of the hub content to import.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_import_hub_content_:_HubContentType">HubContentType</code></td>
<td><p>[required] The type of hub content to import.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_import_hub_content_:_DocumentSchemaVersion">DocumentSchemaVersion</code></td>
<td><p>[required] The version of the hub content schema to
import.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_import_hub_content_:_HubName">HubName</code></td>
<td><p>[required] The name of the hub to import content into.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_import_hub_content_:_HubContentDisplayName">HubContentDisplayName</code></td>
<td><p>The display name of the hub content to import.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_import_hub_content_:_HubContentDescription">HubContentDescription</code></td>
<td><p>A description of the hub content to import.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_import_hub_content_:_HubContentMarkdown">HubContentMarkdown</code></td>
<td><p>A string that provides a description of the hub content. This
string can include links, tables, and standard markdown
formating.</p></td>
</tr>
<tr class="odd">
<td><code
id="sagemaker_import_hub_content_:_HubContentDocument">HubContentDocument</code></td>
<td><p>[required] The hub content document that describes information
about the hub content such as type, associated containers, scripts, and
more.</p></td>
</tr>
<tr class="even">
<td><code
id="sagemaker_import_hub_content_:_HubContentSearchKeywords">HubContentSearchKeywords</code></td>
<td><p>The searchable keywords of the hub content.</p></td>
</tr>
<tr class="odd">
<td><code id="sagemaker_import_hub_content_:_Tags">Tags</code></td>
<td><p>Any tags associated with the hub content.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      HubArn = "string",
      HubContentArn = "string"
    )

### Request syntax

    svc$import_hub_content(
      HubContentName = "string",
      HubContentVersion = "string",
      HubContentType = "Model"|"Notebook",
      DocumentSchemaVersion = "string",
      HubName = "string",
      HubContentDisplayName = "string",
      HubContentDescription = "string",
      HubContentMarkdown = "string",
      HubContentDocument = "string",
      HubContentSearchKeywords = list(
        "string"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      )
    )
