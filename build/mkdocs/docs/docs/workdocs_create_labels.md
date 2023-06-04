<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workdocs_create_labels</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds the specified list of labels to the given resource (a document or folder)

### Description

Adds the specified list of labels to the given resource (a document or
folder)

### Usage

    workdocs_create_labels(ResourceId, Labels, AuthenticationToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workdocs_create_labels_:_ResourceId">ResourceId</code></td>
<td><p>[required] The ID of the resource.</p></td>
</tr>
<tr class="even">
<td><code id="workdocs_create_labels_:_Labels">Labels</code></td>
<td><p>[required] List of labels to add to the resource.</p></td>
</tr>
<tr class="odd">
<td><code
id="workdocs_create_labels_:_AuthenticationToken">AuthenticationToken</code></td>
<td><p>Amazon WorkDocs authentication token. Not required when using
Amazon Web Services administrator credentials to access the
API.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$create_labels(
      ResourceId = "string",
      Labels = list(
        "string"
      ),
      AuthenticationToken = "string"
    )
