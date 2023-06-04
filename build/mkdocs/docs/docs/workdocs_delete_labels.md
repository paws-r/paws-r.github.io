<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workdocs_delete_labels</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the specified list of labels from a resource

### Description

Deletes the specified list of labels from a resource.

### Usage

    workdocs_delete_labels(ResourceId, AuthenticationToken, Labels,
      DeleteAll)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workdocs_delete_labels_:_ResourceId">ResourceId</code></td>
<td><p>[required] The ID of the resource.</p></td>
</tr>
<tr class="even">
<td><code
id="workdocs_delete_labels_:_AuthenticationToken">AuthenticationToken</code></td>
<td><p>Amazon WorkDocs authentication token. Not required when using
Amazon Web Services administrator credentials to access the
API.</p></td>
</tr>
<tr class="odd">
<td><code id="workdocs_delete_labels_:_Labels">Labels</code></td>
<td><p>List of labels to delete from the resource.</p></td>
</tr>
<tr class="even">
<td><code id="workdocs_delete_labels_:_DeleteAll">DeleteAll</code></td>
<td><p>Flag to request removal of all labels from the specified
resource.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_labels(
      ResourceId = "string",
      AuthenticationToken = "string",
      Labels = list(
        "string"
      ),
      DeleteAll = TRUE|FALSE
    )
